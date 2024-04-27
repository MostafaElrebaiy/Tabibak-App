import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/widgets/build_custom_app_bar.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/hosptial_body.dart';

import '../../../../core/theme/styles.dart';

class HospitalScreenView extends StatelessWidget {
  const HospitalScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
        backarrow: true,

        text1: "tabibak".tr(context),
        style1: AppStyle.f20WhiteW600,
        // actions: [BuildHospitalAppBarAction(
        //   icon: const Icon(Icons.notifications_none_rounded),
        //    right: AppSize.s3.w,
        //   bottom: AppSize.s10.h,
        //   onTap: () {}),
        //   ]
      ),
      body: const HonspitalBody(),
    );
  }
}
