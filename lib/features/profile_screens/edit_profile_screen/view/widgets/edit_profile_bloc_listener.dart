import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/utilities/show_failure_dialog.dart';
import 'package:tabibk/core/utilities/show_loading_dialog.dart';
import 'package:tabibk/core/utilities/show_success_dialog.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/update_profile/update_profile_cubit.dart';

class EditProfileBlocListener extends StatelessWidget {
  const EditProfileBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateProfileCubit, UpdateProfileState>(
        listenWhen: ((previous, current) =>
            current is UpdateProfileStateLoading ||
            current is UpdateProfileStateSuccess ||
            current is UpdateProfileStateError),
        listener: (context, state) {
          state.whenOrNull(
            loading: () => showLoadingDialog(context),
            success: (updateProfileResponse) async {
              context.pop();
              await showSuccessDialog(
                  context: context,
                  textOfButton: "Got it",
                  isBack: true,
                  routeName: Routes.profileView,
                  title: 'Success',
                  message: 'successfully updated');
              return Navigator.pop(context, true);
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
