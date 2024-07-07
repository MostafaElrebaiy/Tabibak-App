import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';

import '../../routing/routes.dart';
import '../../theme/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "alreadyHaveAccount".tr(context),
          style: AppStyle.font112DarkGrayRegular,
        ),
        GestureDetector(
          onTap: () {
            context.pushReplacementNamed(Routes.loginScreen);
          },
          child: Text(
            "login".tr(context),
            style: AppStyle.font12primaryBlueSemiBold,
          ),
        ),
      ],
    );
  }
}
