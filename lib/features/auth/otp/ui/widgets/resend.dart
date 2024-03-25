import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          'If didn’t receive a code! ',
          style: AppStyle.font112DarkGrayRegular,
        ),
        GestureDetector(
          onTap: () {
            validateToSendEmail(context);
          },
          child: Text(
            ' Resend',
            style: AppStyle.font12MainBlueSemiBold,
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
