import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/constant.dart';

class MainButtonWidget extends StatelessWidget {
  const MainButtonWidget(
      {super.key,
      required this.text,
      this.thereIcon = false,
      required this.onPressed,
      this.icon});
  final String text;
  final bool thereIcon;
  final VoidCallback onPressed;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        animationDuration: const Duration(milliseconds: 300),
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: AppPadding.p12),
        backgroundColor: AppColor.primaryBlue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s250.w))),
        minimumSize: Size(AppSize.s337.w, AppSize.s48.h),
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
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: secondFontFamily,
              fontSize: AppSize.s16.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.white,
            ),
          ),
        ],
      ),
    );
  }
}
