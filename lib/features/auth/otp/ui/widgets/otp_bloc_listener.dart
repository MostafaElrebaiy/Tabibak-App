import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/utilities/show_failure_dialog.dart';
import 'package:tabibk/core/utilities/show_loading_dialog.dart';
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
        checkCodeLoading: () => showLoadingDialog(context),

        // checkCodeSuccess: (checkCodeResponse) {
        //   context.pop();
        //   // return showSuccessDialog(context);
        // },
        checkCodeError: (error) {
          context.pop();
          return showFailureDialog(
              context, error, context.pushReplacementNamed(Routes.otpScreen));
        },
      ),
      child: const SizedBox.shrink(),
    );
  }

}
