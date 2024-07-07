import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/app_localization.dart';

import '../../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../../core/theme/styles.dart';
import '../../logic/sign_up_cubit.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: "signUp".tr(context),
      textStyle: AppStyle.font16WhiteSemiBold,
      onPressed: () {
        validateThenDoSignup(context);
      },
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
