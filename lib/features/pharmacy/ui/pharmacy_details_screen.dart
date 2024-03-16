import 'package:flutter/material.dart';
import '../../../core/helper/app_string.dart';
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
          text1: AppString.productDetails,
          style1: AppStyle.f20WhiteW600,
          actions: []),
      body: const PharmacyDetailsBody(),
    );
  }
}
