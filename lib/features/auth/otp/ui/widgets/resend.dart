import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/extensions.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';

class Resend extends StatelessWidget {
  const Resend({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'If didn’t receive a code! ',
          style: AppStyle.font112DarkGrayRegular,
        ),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.loginScreen);
          },
          child: Text(
            ' Resend',
            style: AppStyle.font12MainBlueSemiBold,
          ),
        ),
      ],
    );
  }
}
