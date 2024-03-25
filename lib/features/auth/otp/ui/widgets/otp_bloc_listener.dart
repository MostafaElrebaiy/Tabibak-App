import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/auth/otp/logic/check_code_cubit.dart';
import 'package:tabibk/features/auth/otp/logic/check_code_state.dart';
import '../../../../../core/routing/routes.dart';

class OtpBlocListener extends StatelessWidget {
  const OtpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckCodeCubit, CheckCodeState>(
      listenWhen: (previous, current) =>
          current is CheckCodeLoading ||
          current is CheckCodeSuccess ||
          current is CheckCodeError,
      listener: (context, state) => state.whenOrNull(
        checkCodeLoading: () {
          return showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainBlue,
              ),
            ),
          );
        },
        checkCodeSuccess: (checkCodeResponse) {
          context.pop();
          return showSuccessDialog(context);
        },
        checkCodeError: (error) {
          context.pop();
          return setupErrorState(context, error);
        },
      ),
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('code verified successfully!'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you can update your password now!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Continue'),
              onPressed: () {
                context.pushNamed(Routes.updatePasswordScreen);
              },
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: AppStyle.font10MainBlueRegular,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppStyle.font16MainBLueBold,
            ),
          ),
        ],
      ),
    );
  }
}
