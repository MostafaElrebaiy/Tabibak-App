import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/styles.dart';

import '../../theme/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final IconData? icon;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final bool thereIcon;

  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      required this.buttonText,
       this.textStyle,
      required this.onPressed,  this.thereIcon =false, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      onPressed: onPressed,
      style: ButtonStyle(
        
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 32),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? AppColor.mainBlue,
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 12.h,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 50.h),
        ),
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          thereIcon
              ? Icon(
                  icon,
                  color: AppColor.white,
                  weight: 0.1,
                  grade: 0.1,
                  fill: 0.1,
                )
              : const SizedBox(),
          const SizedBox(width: AppSize.s10),
         Text(
            buttonText,
            style: textStyle ?? AppStyle.font16WhiteSemiBold,
          ),
        ],
      ), 
      
    );
  }
}
