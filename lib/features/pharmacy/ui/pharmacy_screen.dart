import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';

import '../../../core/helper/value_manager.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/build_custom_app_bar.dart';
import 'widgets/pharmacy_body.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
          backarrow: true,
          text1: "productDetails".tr(context),
          style1: AppStyle.f20WhiteW600,
          actions: []),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p18.w, vertical: AppPadding.p20.h),
        child: const PharmacyBody(),
      ),
    );
  }
}
