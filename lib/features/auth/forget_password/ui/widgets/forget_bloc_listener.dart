import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/utilities/show_failure_dialog.dart';
import 'package:tabibk/core/utilities/show_loading_dialog.dart';
import 'package:tabibk/features/auth/forget_password/logic/forget_password_cubit.dart';
import 'package:tabibk/features/auth/forget_password/logic/forget_password_state.dart';

class ForgetBlocListener extends StatelessWidget {
  const ForgetBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetCubit, ForgetState>(
        listenWhen: ((previous, current) =>
            current is ForgetLoading ||
            current is ForgetSuccess ||
            current is ForgetError),
        listener: (context, state) {
          state.whenOrNull(
            forgetLoading: () => showLoadingDialog(context),
            forgetSuccess: (loginResponse) {
              context.pop();
              context.pushReplacementNamed(Routes.otpScreen);
            },
            forgetError: (error) {
              context.pop();
              showFailureDialog(context, error);
            },
          );
        },
        child: const SizedBox.shrink());
  }
}
