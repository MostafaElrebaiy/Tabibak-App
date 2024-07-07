import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';

class LoginCreateAccount extends StatelessWidget {
  const LoginCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "dontHaveAccount".tr(context) ,
          style: AppStyle.font112DarkGrayRegular,
        ),
        GestureDetector(
          onTap: () {
            context.pushReplacementNamed(Routes.signUpScreen);
          },
          child: Text(
            "createAccount".tr(context),
            style: AppStyle.font12primaryBlueSemiBold,
          ),
        ),
      ],
    );
  }
}
