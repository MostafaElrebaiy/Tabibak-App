import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/utilities/show_failure_dialog.dart';
import 'package:tabibk/features/blood_bank/logic/cubit/blood_bank_cubit.dart';
import 'package:tabibk/features/blood_bank/logic/cubit/blood_bank_state.dart';

class BloodBankLisenter extends StatelessWidget {
  const BloodBankLisenter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BloodBankCubit, BloodBankState>(
      listener: (context, state) {
        state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (bloodBankResponse) {
            context.pop();
            context.pushNamed(Routes.bloodBankSearchScreen,
                arguments: bloodBankResponse);
          },
          error: (error) {
            context.pop();
            showFailureDialog(context, error);
          },
        );
      },
    );
  }
}
