import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class CustomAppTextField extends StatelessWidget {
  const CustomAppTextField(
      {super.key,
      required this.hintText,
      required this.title,
      required this.validator,
      this.controller,
      this.textInputAction,
      required this.keyboardType,
      this.isObscure,
      this.isEnabled = true,
      this.initialValue});
  final String hintText;
  final String? initialValue;
  final TextInputAction? textInputAction;
  final TextInputType keyboardType;
  final String title;
  final bool? isObscure;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final bool isEnabled;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style:
              AppStyle.f16BlackW700Mulish.copyWith(fontWeight: FontWeight.w600),
        ),
        verticalSpace(5),
        TextFormField(
          cursorColor: AppColor.primaryBlue,
          initialValue: initialValue,
          textInputAction: textInputAction ?? TextInputAction.next,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: isObscure ?? false,
          validator: validator,
          enabled: isEnabled,
          decoration: InputDecoration(
            hintStyle: AppStyle.font14GrayRegular,
            isDense: false,
            hintText: hintText,
            border: outLineBorder(),
            focusedBorder: outLineBorder(),
            enabledBorder: outLineBorder(),
            disabledBorder: outLineBorder(color: AppColor.gray),
            focusedErrorBorder: outLineBorder(color: AppColor.errorColor),
            errorBorder: outLineBorder(color: AppColor.errorColor),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder outLineBorder({Color? color}) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? AppColor.black.withOpacity(0.3),
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)));
  }
}
