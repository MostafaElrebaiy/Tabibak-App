import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_widget/app_text_form_field.dart';
import '../../../../../core/helper/spacing.dart';

class LoginTextFormField extends StatefulWidget {
  const LoginTextFormField({super.key});

  @override
  State<LoginTextFormField> createState() => _LoginTextFormFieldState();
}

class _LoginTextFormFieldState extends State<LoginTextFormField> {
  bool isObscureText = true;
   FocusNode emailOrPhone = FocusNode();
  FocusNode password = FocusNode();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          focusNode: emailOrPhone,
           onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(password);
          },
          hintText: 'Email or Phone',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
        verticalSpace(18.h),
        AppTextFormField(
          focusNode: password,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              icon: Icon(isObscureText? Icons.visibility_off:Icons.visibility)),
          isObscureText: isObscureText,
          hintText: 'Password',
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
