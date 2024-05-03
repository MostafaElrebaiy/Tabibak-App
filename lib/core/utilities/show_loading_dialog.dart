import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/app_colors.dart';

Future<dynamic> showLoadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => const Center(
      child: CircularProgressIndicator(
        color: AppColor.mainBlue,
      ),
    ),
  );
}
