import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/build_custom_app_bar.dart';
import 'widgets/pharmacy_details_body.dart';

class PharmacyDetailsScreen extends StatelessWidget {
  const PharmacyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
          backarrow: true,
          text1: "productDetails".tr(context),
          style1: AppStyle.f20WhiteW600,
          actions: []),
      body: const PharmacyDetailsBody(),
    );
  }
}
