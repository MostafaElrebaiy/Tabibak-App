import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_widget/app_text_form_field.dart';
import '../../../../../core/helper/spacing.dart';

class SignUpTextFormField extends StatefulWidget {
  const SignUpTextFormField({super.key});

  @override
  State<SignUpTextFormField> createState() => _SignUpTextFormFieldState();
}

class _SignUpTextFormFieldState extends State<SignUpTextFormField> {
  bool isObscureText1 = true;
  bool isObscureText2 = true;
  FocusNode name = FocusNode();
  FocusNode phone = FocusNode();
  FocusNode email = FocusNode();
  FocusNode password = FocusNode();
  FocusNode confirmPassword = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(phone);
          },
          focusNode: name,
          hintText: 'Name',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid Name';
            }
          },
        ),
        verticalSpace(15.h),
        AppTextFormField(
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(email);
          },
          focusNode: phone,
          hintText: 'Phone',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid phone';
            }
          },
        ),
        verticalSpace(15.h),
        AppTextFormField(
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(password);
          },
          focusNode: email,
          hintText: 'Email',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid Email';
            }
          },
        ),
        verticalSpace(15.h),
        AppTextFormField(
          onFieldSubmitted: (value) {
            FocusScope.of(context).requestFocus(confirmPassword);
          },
          focusNode: password,
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
        ),
        verticalSpace(15.h),
        AppTextFormField(
          focusNode: confirmPassword,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscureText1 = !isObscureText1;
                });
              },
              icon: Icon(
                  isObscureText1 ? Icons.visibility_off : Icons.visibility)),
          isObscureText: isObscureText1,
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
