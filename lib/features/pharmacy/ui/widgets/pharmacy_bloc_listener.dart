import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/utilities/show_failure_dialog.dart';
import 'package:tabibk/core/utilities/show_loading_dialog.dart';
import 'package:tabibk/features/pharmacy/logic/cubit/pharmacy_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/cubit/pharmacy_state.dart';

class PharmacyBlocListener extends StatelessWidget {
  const PharmacyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<PharmacyCubit, PharmacyState>(
      listenWhen: (previous, current) =>
          current is PharmacyLoading ||
          current is PharmacySuccess ||
          current is PharmacyError,
      listener: (context, state) => state.whenOrNull(
        loading: () => showLoadingDialog(context),
        success: (pharmacyResponse) {
          return context.pop();
          // return showSuccessDialog(context);
        },
        error: (error) {
          context.pop();
          return showFailureDialog(context, error);
        },
      ),
      child: const SizedBox.shrink(),
    );
  }
}
