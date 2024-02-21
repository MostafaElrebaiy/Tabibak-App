import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/custome_widget/app_text_form_field.dart';
import '../../../../core/helper/spacing.dart';

class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppTextFormField(
                    hintText: 'Email or Phone',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid password';
                      }
                    },
                  ),
                  verticalSpace(18.h),
                  AppTextFormField(
                    suffixIcon: const Icon(Icons.visibility),
                    isObscureText: true,
                    hintText: 'Password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid password';
                      }
                    },
                  ),
    ],);
  }
}
