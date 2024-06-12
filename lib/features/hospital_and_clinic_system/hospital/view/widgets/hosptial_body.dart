import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
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
                  //TODO: Remove The Static Department Name and Replace Dynamic Index
                  BlocProvider.of<HospitalCubit>(context).emitLoadingState(
                      departmentName: dep.data?[0].name ?? '',
                      lat: context.read<DepartmentCubit>().lat,
                      lng: context.read<DepartmentCubit>().lng);
                  BlocProvider.of<ClinicCubit>(context).emitLoadingState(
                      departmentName: dep.data?[0].name ?? '',
                      lat: context.read<DepartmentCubit>().lat,
                      lng: context.read<DepartmentCubit>().lng);
                  context.pop();
                },
                error: (error) {
                  context.pop();
                  showFailureDialog(context, error);
                });
          },
          child: SizedBox(
            height: 100.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.read<DepartmentCubit>().getDepartment();
                    },
                    child: Container(
                      color: AppColor.gray,
                      padding:
                          EdgeInsets.symmetric(horizontal: AppPadding.p20.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.stroller_rounded,
                            size: 35,
                            color: AppColor.primaryBlue,
                          ),
                          Text(
                            "Test Department",
                            style: AppStyle.f16BlackW700Mulish,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
        verticalSpace(20),
        const Expanded(child: BuildHospitalAndClinicsTab()),
      ],
    );
  }
}
// This is comment for the Test GitHUb