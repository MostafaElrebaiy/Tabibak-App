import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_form_field.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';

import '../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../core/widgets/custom_widget/image2_curve_top_bk.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';

// ignore: must_be_immutable
class UpdatePasswordScreen extends StatelessWidget {
  UpdatePasswordScreen({super.key});
  FocusNode updatePassword = FocusNode();
  FocusNode reenterNewPassword = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(children: [
          Column(children: [
            Stack(children: [
              CustomPaint(
                size: Size(double.infinity.w, 360.h),
                painter: ForgetImage(),
              ),
              Positioned(
                left: 10,
                top: 35,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: AppColor.white,
                    size: 35,
                  ),
                  onPressed: () {
                    context.pushNamed(Routes.loginScreen);
                  },
                ),
              ),
            ]),
          ]),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h, left: 20.w, right: 30.w),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Update Password',
                        style: AppStyle.font24BlackBold)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Please enter your new password.',
                      style: AppStyle.font14GrayRegular),
                ),
                verticalSpace(50),
                AppTextFormField(
                    focusNode: updatePassword,
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).requestFocus(reenterNewPassword);
                    },
                    suffixIcon: const Icon(Icons.visibility),
                    isObscureText: true,
                    hintText: 'Enter New Password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid Password';
                      }
                    }),
                verticalSpace(10),
                AppTextFormField(
                    focusNode: reenterNewPassword,
                    suffixIcon: const Icon(Icons.visibility),
                    isObscureText: true,
                    hintText: 'Re-enter New Password ',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid Password';
                      }
                    }),
                verticalSpace(30),
                AppTextButton(
                  buttonText: 'Send',
                  textStyle: AppStyle.font16WhiteSemiBold,
                  onPressed: () {
                    context.pushNamed(Routes.otpScreen);
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
