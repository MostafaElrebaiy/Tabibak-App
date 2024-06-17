import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/theme/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          AppAsset.errorJson,
          height: 100,
        ),
        
        Text(
          errorMessage,
          textAlign: TextAlign.center,
          style: AppStyle.f16BlackW700Mulish,
        ),
      ],
    );
  }
}
