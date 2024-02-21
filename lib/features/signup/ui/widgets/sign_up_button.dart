import 'package:flutter/material.dart';

import '../../../../core/custome_widget/app_text_button.dart';
import '../../../../core/theme/styles.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: 'Sign Up',
      textStyle: AppStyle.font16WhiteSemiBold,
      onPressed: () {},
    );
  }
}
