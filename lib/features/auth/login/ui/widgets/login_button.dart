import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';

import '../../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../../core/theme/styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: 'Login',
      textStyle: AppStyle.font16WhiteSemiBold,
      onPressed: () {
        context.pushReplacementNamed(Routes.homeScreen);
      },
    );
  }
}
