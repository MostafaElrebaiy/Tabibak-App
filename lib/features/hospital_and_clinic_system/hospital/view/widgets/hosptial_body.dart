import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/utilities/error_text_widget.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/department_model/department_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/clinic/clinic_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/department/department_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/department/department_state.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/hospital/hospital_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/build_hospital_and_clinics_tab.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/department_item.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/department_shimmer_loading.dart';

class HospitalBody extends StatefulWidget {
  const HospitalBody({super.key});

  @override
  State<HospitalBody> createState() => _HospitalBodyState();
}

class _HospitalBodyState extends State<HospitalBody> {
  int selectedDepartmentId = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 10.h),
            child: Text("Departments".tr(context),
                style: AppStyle.f22blackW700Mulish
                    .copyWith(fontWeight: FontWeight.w500))),
        BlocBuilder<DepartmentCubit, DepartmentState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                loading: () => const DepartmentShimmerLoading(),
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
                        return BlocBuilder<DepartmentCubit, DepartmentState>(
                          builder: (context, state) {
                            return GestureDetector(
                              onTap: () {
                                BlocProvider.of<HospitalCubit>(context)
                                    .getHospital(
                                        lat:
                                            context.read<DepartmentCubit>().lat,
                                        lng:
                                            context.read<DepartmentCubit>().lng,
                                        departmentId: (index + 1));
                                BlocProvider.of<ClinicCubit>(context)
                                    .getClinics(
                                        lat:
                                            context.read<DepartmentCubit>().lat,
                                        lng:
                                            context.read<DepartmentCubit>().lng,
                                        departmentId: (index + 1));

                                setState(() {
                                  selectedDepartmentId = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  right: 20,
                                  left: index == 0 ? 20 : 0,
                                ),
                                child: DepartmentItem(
                                  index: index,
                                  isSelected: selectedDepartmentId == index,
                                  department: department,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  );
                },
                error: (error) => setErrorState(error));
          },
        ),
        const Expanded(child: BuildHospitalAndClinicsTab()),
      ],
    );
  }
}

Widget setErrorState(String error) {
  return Container(
      margin: EdgeInsets.only(
        bottom: 10.h,
      ),
      height: 130.h,
      child: ErrorTextWidget(
        errorMessage: error,
      ));
}
