import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/custom_widget/already_have_an_account.dart';
import 'widgets/or_sign_up_with.dart';
import 'widgets/sigh_up_top_bk.dart';
import 'widgets/sign_up_button.dart';
import 'widgets/sign_up_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        reverse: true,

      child: Column(
        children: [
          const SignUpTopBackground(),
          Padding(
              padding: EdgeInsets.only(
                  top: 50.h, bottom: 20.h, left: 30.w, right: 30.w),
              child: Column(
                children: [
                  const SignUpTextFormField(),
                  verticalSpace(20.h),
                  const SignUpButton(),
                  verticalSpace(25.h),
                  const OrSignUpWith(),
                  verticalSpace(25.h),
                  const AlreadyHaveAnAccount(),
                ],
              )),
        ],
      ),
    ));
  }
}
