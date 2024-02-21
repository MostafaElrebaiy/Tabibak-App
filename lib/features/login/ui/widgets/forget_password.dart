import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class LoginForgetPassword extends StatelessWidget {
  const LoginForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          // context.pushNamed(Routes.forgotPasswordScreen);
        },
        child: Text('    Forgot Password?',
            style: AppStyle.font12MainBlueSemiBold),
      ),
    );
  }
}
