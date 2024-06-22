import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/update_profile/update_profile_cubit.dart';
import 'custom_app_text_field.dart';

class EditProfileTextFormField extends StatelessWidget {
  const EditProfileTextFormField({super.key});
  @override
  Widget build(BuildContext context) {
    final userData = context.read<UpdateProfileCubit>().userDetailsResponse?.data;

    return Form(
      key: context.read<UpdateProfileCubit>().formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppTextField(
            controller: context.read<UpdateProfileCubit>().nameController,
            hintText: userData?.name ?? 'Enter your name',
            title: AppLocalization.of(context)!.translate("name"),
            keyboardType: TextInputType.text,
            validator: (value) {
              // if (value!.isEmpty) {
              //   return AppLocalization.of(context)!.translate("enterName");
              // }
              return null;
            },
          ),
          verticalSpace(20),
          CustomAppTextField(
            hintText: userData?.email ?? 'you can not change your email',
            initialValue: userData?.email ?? 'you can not change your email',
            title: AppLocalization.of(context)!.translate("email"),
            isEnabled: false,
            keyboardType: TextInputType.emailAddress,
            validator: (value) => null,
          ),
          verticalSpace(20),
          CustomAppTextField(
            controller: context.read<UpdateProfileCubit>().passwordController,
            hintText: AppLocalization.of(context)!.translate("password"),
            title: AppLocalization.of(context)!.translate("password"),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            isObscure: true,
            validator: (value) => null,
          ),
          verticalSpace(20),
          CustomAppTextField(
            controller:
                context.read<UpdateProfileCubit>().passwordConfirmController,
            hintText: "enterPasswordAgain".tr(context),
            title: "passwordConfirm".tr(context),
            keyboardType: TextInputType.text,
            isObscure: true,
            validator: (value) => null,
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
