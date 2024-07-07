import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import '../../../../../core/theme/styles.dart';
import '../../../forget_password/logic/forget_password_cubit.dart';

class Resend extends StatelessWidget {
  const Resend({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
         "ResendCode".tr(context),
          style: AppStyle.font112DarkGrayRegular,
        ),
        GestureDetector(
          onTap: () {
            validateToSendEmail(context);
          },
          child: Text(
            "resend".tr(context),
            style: AppStyle.font12primaryBlueSemiBold,
          ),
        ),
      ],
    );
  }

  void validateToSendEmail(BuildContext context) {
    if (context.read<ForgetCubit>().formKey.currentState!.validate()) {
      context.read<ForgetCubit>().emitLoginState();
    }
  }
}
