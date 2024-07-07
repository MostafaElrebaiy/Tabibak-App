import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';

class LoginForgetPassword extends StatelessWidget {
  const LoginForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          context.pushReplacementNamed(Routes.forgetPasswordScreen);
        },
        child: Text("forgetPassword".tr(context),
            style: AppStyle.font12primaryBlueSemiBold),
      ),
    );
  }
}
