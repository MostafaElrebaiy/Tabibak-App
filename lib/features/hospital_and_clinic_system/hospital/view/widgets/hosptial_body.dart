import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/utilities/show_failure_dialog.dart';
import 'package:tabibk/core/utilities/show_loading_dialog.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/department_model/department_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/clinic/clinic_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/department/department_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/department/department_state.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/hospital/hospital_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/build_hospital_and_clinics_tab.dart';

class HonspitalBody extends StatelessWidget {
  const HonspitalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocListener<DepartmentCubit, DepartmentState>(
          listener: (context, state) {
            state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => showLoadingDialog(context),
              success: (department) {
                DepartmentResponse dep = department as DepartmentResponse;
                int index = context.read<DepartmentCubit>().currentIndex ?? 0;

                BlocProvider.of<HospitalCubit>(context).emitLoadingState(
                  departmentName: dep.data?[index].name ?? '',
                  lat: context.read<DepartmentCubit>().lat,
                  lng: context.read<DepartmentCubit>().lng,
                );
                BlocProvider.of<ClinicCubit>(context).emitLoadingState(
                  departmentName: dep.data?[index].name ?? '',
                  lat: context.read<DepartmentCubit>().lat,
                  lng: context.read<DepartmentCubit>().lng,
                );
                context.pop();
              },
              error: (error) {
                context.pop();
                showFailureDialog(context, error);
              },
            );
          },
          child: BlocBuilder<DepartmentCubit, DepartmentState>(
            builder: (context, state) {
              
             return SizedBox(
                height: 155.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.read<DepartmentCubit>().setCurrentIndex(index);
                        context.read<DepartmentCubit>().getDepartment();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            verticalSpace(16.h),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.colorF0F0F0,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(AppPadding.p24),
                              child: Image.asset(AppAsset.painkillersImage),
                              
                            ),
                            verticalSpace(10.h),
                            Text( 'test departmennt'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
        verticalSpace(30),
        const Expanded(child: BuildHospitalAndClinicsTab()),
      ],
    );
  }
}