import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/constant.dart';

Widget buildLoginButton(
    {required String text, required VoidCallback onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      animationDuration: const Duration(milliseconds: 300),
      elevation: 0,
      backgroundColor: AppColor.mainBlue,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s250.w))),
      fixedSize: Size(AppSize.s337.w, AppSize.s48.h),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: secondFontFamily,
            fontSize: AppSize.s16.sp,
            fontWeight: FontWeight.w600,
            color: AppColor.white,
          ),
        ),
      ],
    ),
  );
}
