import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
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
            loading: () {
              showDialog(
                  context: context,
                  builder: (context) => const Center(
                        child: CircularProgressIndicator(
                          color: AppColor.mainBlue,
                        ),
                      ));
            },
            success: (loginResponse) {
              context.pop();
              context.pushNamed(Routes.homeScreen);
            },
            error: (error) {
              context.pop();
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        icon: const Icon(
                          Icons.error,
                          color: AppColor.errorColor,
                          size: 35,
                        ),
                        content: Text(
                          error,
                          style: AppStyle.f18BalckW400Mulish,
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: Text(
                                "got it",
                                style: AppStyle.font10MainBlueRegular,
                              ))
                        ],
                      ));
            },
          );
        },
        child: const SizedBox.shrink());
  }
}
