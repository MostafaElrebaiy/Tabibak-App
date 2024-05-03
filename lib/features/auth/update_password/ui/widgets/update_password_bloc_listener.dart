import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/utilities/show_failure_dialog.dart';
import 'package:tabibk/core/utilities/show_loading_dialog.dart';
import 'package:tabibk/core/utilities/show_success_dialog.dart';
import 'package:tabibk/features/auth/update_password/logic/reset_password_state.dart';
import '../../../../../core/routing/routes.dart';
import '../../logic/reset_password_cubit.dart';

class UpdatePasswordBlocListener extends StatelessWidget {
  const UpdatePasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) =>
          current is ResetPasswordLoading ||
          current is ResetPasswordSuccess ||
          current is ResetPasswordError,
      listener: (context, state) => state.whenOrNull(
        resetPasswordLoading: () => showLoadingDialog(context),
        resetPasswordSuccess: (resetPasswordResponse) {
          context.pop();
          return showSuccessDialog(
              context: context,
              routeName: Routes.successfulyUpdatePasswordScreen,
              title: "OTP Verified Successfully!",
              message: "Congratulations, you can update your password now!");
        },
        resetPasswordError: (error) {
          context.pop();
          return showFailureDialog(context, error);
        },
      ),
      child: const SizedBox.shrink(),
    );
  }
}
