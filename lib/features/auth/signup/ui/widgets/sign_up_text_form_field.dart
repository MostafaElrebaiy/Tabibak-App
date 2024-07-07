import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/features/auth/signup/logic/sign_up_state.dart';
import '../../../../../core/widgets/custom_widget/app_text_form_field.dart';
import '../../../../../core/helper/spacing.dart';
import '../../logic/sign_up_cubit.dart';

class SignUpTextFormField extends StatefulWidget {
  const SignUpTextFormField({super.key});

  @override
  State<SignUpTextFormField> createState() => _SignUpTextFormFieldState();
}

class _SignUpTextFormFieldState extends State<SignUpTextFormField> {
  bool isObscureText1 = true;
  bool isObscureText2 = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            onFieldSubmitted: (value) {
              FocusScope.of(context)
                  .requestFocus(context.read<SignupCubit>().email);
            },
            focusNode: context.read<SignupCubit>().name,
            hintText: "name".tr(context),
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'pleaseEnterAValidName'.tr(context);
              } else if (value.length < 3) {
                return 'atLeast3Characters'.tr(context);
              }
              return null;
            },
            controller: context.read<SignupCubit>().nameController,
          ),
          verticalSpace(15.h),
          AppTextFormField(
            onFieldSubmitted: (value) {
              FocusScope.of(context)
                  .requestFocus(context.read<SignupCubit>().password);
            },
            focusNode: context.read<SignupCubit>().email,
            hintText: "email".tr(context),
            textInputAction: TextInputAction.next,

            validator: (value) {
              if (value == null || value.isEmpty) {
                return "pleaseEnterAValidEmail".tr(context);
              }
            },
            controller: context.read<SignupCubit>().emailController,
          ),
          verticalSpace(15.h),
          AppTextFormField(
            onFieldSubmitted: (value) {
              FocusScope.of(context)
                  .requestFocus(context.read<SignupCubit>().confirmPassword);
            },
            focusNode: context.read<SignupCubit>().password,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscureText2 = !isObscureText2;
                  });
                },
                icon: Icon(
                    isObscureText2 ? Icons.visibility_off : Icons.visibility)),
            isObscureText: isObscureText2,
            hintText: "password".tr(context),
            textInputAction: TextInputAction.next,

            validator: (value) {
              if (value == null || value.isEmpty) {
                return "pleaseEnterAValidPassword".tr(context);
              } else if (value.length < 8) {
                return "atLeast8Characters".tr(context);
              }
              return null;
            },
            controller: context.read<SignupCubit>().passwordController,
          ),
          verticalSpace(15.h),
          AppTextFormField(
            focusNode: context.read<SignupCubit>().confirmPassword,
            suffixIcon: BlocBuilder<SignupCubit, SignupState>(
              builder: (context, state) {
                return IconButton(
                    onPressed: () {
                      setState(() {
                        isObscureText1 = !isObscureText1;
                      });
                    },
                    icon: Icon(isObscureText1
                        ? Icons.visibility_off
                        : Icons.visibility));
              },
            ),
            isObscureText: isObscureText1,
            hintText: "confirmPassword".tr(context),
            textInputAction: TextInputAction.done,

            validator: (value) {
              if (value == null || value.isEmpty) {
                return "pleaseEnterAValidPassword".tr(context);
              } else if (value !=
                  context.read<SignupCubit>().passwordController.text) {
                return "passwordsDoNotMatch".tr(context);
              }
              return null;
            },
            controller: context.read<SignupCubit>().passwordConfirmController,
          ),
        ],
      ),
    );
  }
}
