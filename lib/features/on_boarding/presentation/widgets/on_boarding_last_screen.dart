import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/build_create_account_button.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/build_login_button.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/on_boarding_special_shape.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/on_boarding_text.dart';

class OnBoardingLastScreen extends StatelessWidget {
  const OnBoardingLastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        const OnBoardingSpecialShape(),
            verticalSpace(AppSize.s37),
            const OnBoardingText(
                headLine: AppString.pharmacies, textBody: AppString.lorem),
            verticalSpace(AppSize.s30),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildLoginButton(
                    text: AppString.login,
                    onPressed: () {
                      context.pushReplacementNamed(Routes.loginScreen);
                    }),
                SizedBox(
                  height: AppSize.s10.h,
                ),
                buildCreateAccountButton(
                    text: AppString.createAccount,
                    onTap: () {
                      context.pushReplacementNamed(Routes.signUpScreen);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
