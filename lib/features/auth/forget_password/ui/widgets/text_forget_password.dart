import 'package:flutter/material.dart';

import '../../../../../core/theme/styles.dart';

class TextForgetPassword extends StatelessWidget {
  const TextForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text('Forget Password', style: AppStyle.font24BlackBold)),
      Align(
        child: Text(
            'Please enter your email or phone we will send the verification code to reset your password.',
            style: AppStyle.font14GrayRegular),
      )
    ]);
  }
}
