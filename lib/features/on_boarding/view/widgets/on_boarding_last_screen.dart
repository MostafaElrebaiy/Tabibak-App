import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/features/on_boarding/view/widgets/build_create_account_button.dart';
import 'package:tabibk/features/on_boarding/view/widgets/build_login_button.dart';
import 'package:tabibk/features/on_boarding/view/widgets/on_boarding_special_shape.dart';
import 'package:tabibk/features/on_boarding/view/widgets/on_boarding_text.dart';

class OnBoardingLastScreen extends StatelessWidget {
  const OnBoardingLastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const OnBoardingSpecialShape(
              isBackButton: false,
            ),
            verticalSpace(AppSize.s37),
            OnBoardingText(
                headLine: "pharmacies".tr(context),
                textBody: "lorem".tr(context)),
            verticalSpace(AppSize.s30),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildLoginButton(
                    text: "login".tr(context),
                    onPressed: () {
                      context.pushReplacementNamed(Routes.loginScreen);
                    }),
                SizedBox(
                  height: AppSize.s10.h,
                ),
                buildCreateAccountButton(
                    text: "createAccount".tr(context),
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
