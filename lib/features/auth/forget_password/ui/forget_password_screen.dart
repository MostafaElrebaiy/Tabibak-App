import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/routing/routes.dart';
import '../../../../core/custom_widget/app_text_button.dart';
import '../../../../core/custom_widget/app_text_form_field.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/custom_widget/already_have_an_account.dart';
import 'widgets/text_forget_password.dart';
import 'widgets/top_bk_forget_password.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const TopBackgroundForgetPasswordScreen(),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h, left: 20.w, right: 30.w),
            child: Column(
              children: [
                const TextForgetPassword(),
                verticalSpace(50),
                AppTextFormField(
                    hintText: 'Email or Phone',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid Email or Phone';
                      }
                    }),
                verticalSpace(40),
                AppTextButton(
                  buttonText: 'Send',
                  textStyle: AppStyle.font16WhiteSemiBold,
                  onPressed: () {
                    context.pushNamed(Routes.otpScreen);
                  },
                ),
                verticalSpace(10),
                const AlreadyHaveAnAccount(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
