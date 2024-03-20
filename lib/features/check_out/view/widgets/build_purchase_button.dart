import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/constant.dart';
import 'package:tabibk/core/theme/styles.dart';

class BuildPurchaseButton extends StatelessWidget {
  const BuildPurchaseButton(
      {super.key,
      required this.text,
      required this.isSubmit,
      required this.onPressed});
  final String text;
  final bool isSubmit;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: AppColor.black.withOpacity(0.2),
        foregroundColor: AppColor.white,
        surfaceTintColor: Colors.transparent,
        padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p20.w, vertical: AppPadding.p10.h),
        backgroundColor: isSubmit ? AppColor.primaryBlue : AppColor.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s24.w)),
            side: isSubmit
                ? const BorderSide(width: 0)
                : BorderSide(
                    color: AppColor.black.withOpacity(0.2), width: AppSize.s1)),
      ),
      child: Text(
        text,
        style: isSubmit
            ? AppStyle.font16WhiteMedium.copyWith(fontFamily: secondFontFamily)
            : AppStyle.font16WhiteMedium
                .copyWith(fontFamily: secondFontFamily, color: AppColor.gray),
      ),
    );
  }
}
