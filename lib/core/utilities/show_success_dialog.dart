import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

Future showSuccessDialog(
    {required BuildContext context,
    required String title,
    required String routeName,
    required String message,
    String textOfButton = "Continue"}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColor.white,
        icon: Lottie.asset(AppAsset.successThree, height: 100),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: AppStyle.f16BlackW700Mulish,
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              textOfButton,
              style: AppStyle.font16primaryBlueBold,
            ),
            onPressed: () {
              context.pushReplacementNamed(routeName);
            },
          ),
        ],
      );
    },
  );
}
