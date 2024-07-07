import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class ErrorTextWidget extends StatelessWidget {
  const ErrorTextWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: AppStyle.f16BlackW700Mulish.copyWith(color: AppColor.red),
      ),
    );
  }
}
