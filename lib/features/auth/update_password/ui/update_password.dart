import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/features/auth/update_password/logic/reset_password_cubit.dart';
import 'package:tabibk/features/auth/update_password/ui/widgets/update_password_text_field.dart';

import '../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../core/widgets/custom_widget/image2_curve_top_bk.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';
import 'widgets/update_password_bloc_listener.dart';

// ignore: must_be_immutable
class UpdatePasswordScreen extends StatelessWidget {
  UpdatePasswordScreen(this.arg, {super.key});
  String arg;
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
                    context.pushNamed(Routes.otpScreen);
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
                const UpdatePasswordTextField(),
                verticalSpace(30),
                AppTextButton(
                  buttonText: 'Send',
                  textStyle: AppStyle.font16WhiteSemiBold,
                  onPressed: () {
                    context.read<ResetPasswordCubit>().codeController.text =
                        arg;
                    validateThenResetPassword(context);
                  },
                ),
                const UpdatePasswordBlocListener(),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  void validateThenResetPassword(BuildContext context) {
    if (context.read<ResetPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ResetPasswordCubit>().emitResetPasswordStates();
    }
  }
}
