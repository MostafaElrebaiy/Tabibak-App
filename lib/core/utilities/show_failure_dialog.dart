import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

Future<dynamic> showFailureDialog(BuildContext context, String error,
    [dynamic route]) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: AppColor.white,
      icon: Lottie.asset(
        AppAsset.errorJson,
        height: 100,
      ),
      content: Text(
        error,
        textAlign: TextAlign.center,
        style: AppStyle.f16BlackW700Mulish,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
            route;
          },
          child: Text(
            'Got it',
            style: AppStyle.font16MainBLueBold,
          ),
        ),
      ],
    ),
  );
}
