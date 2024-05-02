import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/widgets/custom_widget/app_text_form_field.dart';
import '../../logic/reset_password_cubit.dart';

class UpdatePasswordTextField extends StatefulWidget {
  const UpdatePasswordTextField({super.key});

  @override
  State<UpdatePasswordTextField> createState() =>
      _UpdatePasswordTextFieldState();
}

class _UpdatePasswordTextFieldState extends State<UpdatePasswordTextField> {
  bool isOsecured1 = true;
  bool isOsecured2 = true;

  @override
  Widget build(BuildContext context) {
    // final String? arg = ModalRoute.of(context)!.settings.arguments as String?;

    return Form(
        key: context.read<ResetPasswordCubit>().formKey,
        child: Column(
          children: [
           
            AppTextFormField(
                controller:
                    context.read<ResetPasswordCubit>().passwordController,
                focusNode: context.read<ResetPasswordCubit>().updatePassword,
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(
                      context.read<ResetPasswordCubit>().reenterNewPassword);
                },
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isOsecured1 = !isOsecured1;
                      });
                    },
                    icon: Icon(
                        isOsecured1 ? Icons.visibility_off : Icons.visibility)),
                isObscureText: isOsecured1,
                hintText: 'Enter New Password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid Password';
                  }
                }),
            verticalSpace(10),
            AppTextFormField(
                controller: context
                    .read<ResetPasswordCubit>()
                    .passwordConfirmController,
                focusNode:
                    context.read<ResetPasswordCubit>().reenterNewPassword,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isOsecured2 = !isOsecured2;
                      });
                    },
                    icon: Icon(
                        isOsecured2 ? Icons.visibility_off : Icons.visibility)),
                isObscureText: isOsecured2,
                hintText: 'Re-enter New Password ',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid Password';
                  }
                }),
          ],
        ));
  }
}
