import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import 'widgets/forget_password.dart';
import 'widgets/login_button.dart';
import 'widgets/login_create_account.dart';
import 'widgets/login_text_form_field.dart';
import 'widgets/or_login_with.dart';
import 'widgets/top_bk_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            const TopBackgroundLoginScreen(),
            Padding(
              padding: EdgeInsets.only(
                  top: 50.h, bottom: 20.h, left: 30.w, right: 30.w),
              child: Column(
                children: [
                  const LoginTextFormField(),
                  verticalSpace(12.h),
                  const LoginForgetPassword(),
                  verticalSpace(25.h),
                  const LoginButton(),
                  verticalSpace(30.h),
                  const OrLoginWith(),
                  verticalSpace(30.h),
                  const LoginCreateAccount(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
