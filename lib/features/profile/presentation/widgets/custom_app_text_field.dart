import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class CustomAppTextField extends StatelessWidget {
  const CustomAppTextField(
      {super.key,
      required this.hintText,
      required this.title,
      required this.validator,
      this.textEditingController,
      this.textInputAction,
      required this.keyboardType,
      this.isObscure});
  final String hintText;
  final TextInputAction? textInputAction;
  final TextInputType keyboardType;
  final String title;
  final bool? isObscure;
  final String? Function(String?) validator;
  final TextEditingController? textEditingController;
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
        TextFormField(
          cursorColor: AppColor.primaryBlue,
          textInputAction: textInputAction ?? TextInputAction.next,
          controller: textEditingController,
          keyboardType: keyboardType,
          obscureText: isObscure ?? false,
          validator: validator,
          decoration: InputDecoration(
            hintStyle: AppStyle.font14GrayRegular,
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.black.withOpacity(0.3),
                  width: 1,
                ),
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSize.s8))),
            isDense: false,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.black.withOpacity(0.3),
                  width: 2,
                ),
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSize.s8))),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.errorColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColor.black.withOpacity(0.3), width: 1),
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSize.s8))),
            focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.errorColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
          ),
        ),
      ],
    );
  }
}
