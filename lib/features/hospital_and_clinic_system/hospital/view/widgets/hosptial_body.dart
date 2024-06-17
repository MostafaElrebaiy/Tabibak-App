import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/utilities/custom_error_widget.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/department_model/department_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/clinic/clinic_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/department/department_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/department/department_state.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/hospital/hospital_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/build_hospital_and_clinics_tab.dart';

class HospitalBody extends StatelessWidget {
  const HospitalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 10.h),
            child: Text("Departments",
                style: AppStyle.f22blackW700Mulish
                    .copyWith(fontWeight: FontWeight.w500))),
        BlocBuilder<DepartmentCubit, DepartmentState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => SizedBox(
                height: 130.h,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              success: (departments) {
                DepartmentResponse department = departments;
                return Container(
                  margin: EdgeInsets.only(
                    bottom: 10.h,
                  ),
                  height: 130.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: department.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          BlocProvider.of<HospitalCubit>(context).getHospital(
                              lat: context.read<DepartmentCubit>().lat,
                              lng: context.read<DepartmentCubit>().lng,
                              departmentId: (index + 1));
                          BlocProvider.of<ClinicCubit>(context).getClinics(
                              lat: context.read<DepartmentCubit>().lat,
                              lng: context.read<DepartmentCubit>().lng,
                              departmentId: (index + 1));
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            right: 20,
                            left: index == 0 ? 20 : 0,
                          ),
                          child: Column(
                            children: [
                              verticalSpace(16),
                              CachedNetworkImage(
                                imageUrl: department.data?[index].image ??
                                    "https://th.bing.com/th/id/OIP.Hm0WkmjOz3mcv43X_25wSwHaE5?w=1080&h=715&rs=1&pid=ImgDetMain",
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: 70.w,
                                  height: 70.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                fit: BoxFit.cover,
                                placeholder: (context, url) => SizedBox(
                                  width: 70.w,
                                  height: 70.h,
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                                errorWidget: (context, url, error) => Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.colorF0F0F0,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.all(AppPadding.p24),
                                  child: Image.asset(AppAsset.painkillersImage),
                                ),
                              ),
                              verticalSpace(10),
                              Flexible(
                                child: Text(
                                  department.data?[index].name ?? '',
                                  softWrap: true,
                                  style: AppStyle.f14BlackW700
                                      .copyWith(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              error: (error) => CustomErrorWidget(errorMessage: error),
            );
          },
        ),
        const Expanded(child: BuildHospitalAndClinicsTab()),
      ],
    );
  }
}
