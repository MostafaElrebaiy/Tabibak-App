import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/font_weight_helper.dart';
import 'package:tabibk/core/theme/styles.dart';

class ShippingAddressTextField extends StatelessWidget {
  const ShippingAddressTextField({
    super.key,
    required this.hintText,
    this.isLast = false,
    this.isNum = false,
  });
  final String hintText;
  final bool isLast;
  final bool isNum;
  // final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: () {
        
      },
      autovalidateMode: AutovalidateMode.always,
      canPop: false,
      child: TextField(
        // controller: textEditingController,
        cursorColor: AppColor.gray,
        keyboardType: isNum ? TextInputType.number : TextInputType.text,
        textInputAction: isLast ? TextInputAction.done : TextInputAction.next,
        decoration: InputDecoration(
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.black.withOpacity(0.2),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: AppColor.black.withOpacity(0.3),
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.black.withOpacity(0.2),
            ),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.redAccent,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.black.withOpacity(0.2),
            ),
          ),
          hintText: hintText,
          hintStyle: AppStyle.f16BlackW700Mulish.copyWith(
            fontWeight: FontWeightHelper.regular,
            color: AppColor.black.withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}
