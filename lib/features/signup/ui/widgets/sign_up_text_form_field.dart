import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/custome_widget/app_text_form_field.dart';
import '../../../../core/helper/spacing.dart';

class SignUpTextFormField extends StatelessWidget {
  const SignUpTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'User Name',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
        verticalSpace(10.h),
        AppTextFormField(
          hintText: 'Phone',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
        verticalSpace(10.h),
        AppTextFormField(
          hintText: 'Email',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
        verticalSpace(10.h),
        AppTextFormField(
          hintText: 'Password',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
        verticalSpace(10.h),
        AppTextFormField(
          suffixIcon: const Icon(Icons.visibility),
          isObscureText: true,
          hintText: 'Confirm Password',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
      ],
    );
  }
}
