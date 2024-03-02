import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/widgets/build_custom_app_bar.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/presentation/widgets/build_hospital_app_bar_action.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/presentation/widgets/hosptial_body.dart';

class HospitalScreenView extends StatelessWidget {
  const HospitalScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
          text: AppString.tabibak,
          actions: [BuildHospitalAppBarAction(onTap: () {})]),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p24.w, vertical: AppPadding.p20.h),
        child: const HonspitalBody(),
      ),
    );
  }
}
