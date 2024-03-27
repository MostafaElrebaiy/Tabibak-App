import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            hintText: 'Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Name';
              }
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
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Email';
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
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
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
            hintText: 'Confirm Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
            controller: context.read<SignupCubit>().passwordConfirmController,
          ),
        ],
      ),
    );
  }
}
