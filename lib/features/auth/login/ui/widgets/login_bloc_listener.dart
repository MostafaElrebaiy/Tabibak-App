import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/utilities/show_failure_dialog.dart';
import 'package:tabibk/core/utilities/show_loading_dialog.dart';
import 'package:tabibk/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:tabibk/features/auth/login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: ((previous, current) =>
            current is Loading || current is Success || current is Error),
        listener: (context, state) {
          state.whenOrNull(
            loading: () => showLoadingDialog(context),
            success: (loginResponse) {
              context.pop();
              context.pushReplacementNamed(Routes.homeScreen);
            },
            error: (error) {
              context.pop();
              return showFailureDialog(context, error);
            },
          );
        },
        child: const SizedBox.shrink());
  }
}
