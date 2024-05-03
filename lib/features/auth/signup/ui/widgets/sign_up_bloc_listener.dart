import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/utilities/show_failure_dialog.dart';
import 'package:tabibk/core/utilities/show_loading_dialog.dart';
import 'package:tabibk/core/utilities/show_success_dialog.dart';
import '../../../../../core/routing/routes.dart';
import '../../logic/sign_up_cubit.dart';
import '../../logic/sign_up_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) => state.whenOrNull(
        signupLoading: () => showLoadingDialog(context),
        signupSuccess: (signupResponse) {
          context.pop();
          return showSuccessDialog(
              context: context,
             routeName:  Routes.loginScreen,
              title: 'Success',
              message: 'Account created successfully');
        },
        signupError: (error) {
          context.pop();
          return showFailureDialog(context, error);
        },
      ),
      child: const SizedBox.shrink(),
    );
  }
}
