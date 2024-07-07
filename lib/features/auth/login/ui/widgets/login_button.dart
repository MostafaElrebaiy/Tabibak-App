import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/features/auth/login/logic/cubit/login_cubit.dart';

import '../../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../../core/theme/styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: "login".tr(context),
      textStyle: AppStyle.font16WhiteSemiBold,
      onPressed: () {
        // context.pushReplacementNamed(Routes.homeScreen);
        validateToLogin(context);
      },
    );
  }

  void validateToLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
