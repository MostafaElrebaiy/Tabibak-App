import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
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
            forgetLoading: () {
              showDialog(
                  context: context,
                  builder: (context) => const Center(
                        child: CircularProgressIndicator(
                          color: AppColor.mainBlue,
                        ),
                      ));
            },
            forgetSuccess: (loginResponse) {
              context.pop();
              context.pushNamed(Routes.otpScreen);
            },
            forgetError: (error) {
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
