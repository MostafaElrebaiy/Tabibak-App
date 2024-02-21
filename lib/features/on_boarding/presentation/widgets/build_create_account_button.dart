import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/constant.dart';


Widget buildCreateAccountButton({
  required String text, required VoidCallback onTap}) {

  return InkWell(
    splashColor: Colors.transparent,
    borderRadius:  BorderRadius.all(
      Radius.circular(AppSize.s250.w),
    ),
    onTap: onTap,
    child: Container(
      width: AppSize.s337.w,
      height: AppSize.s48.h,
      decoration: BoxDecoration(
        border: Border.all(
          width: AppSize.s1,
          color: AppColor.mainBlue,
        ),
        color: AppColor.white,
        boxShadow: [
          BoxShadow(

            blurRadius: AppSize.s4,
            blurStyle: BlurStyle.outer,
            color: AppColor.buttonShadowColor.withOpacity(0.2),
          ),
        ],
        borderRadius:  BorderRadius.all(
          Radius.circular(AppSize.s250.w),
        ),),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontFamily: secondFontFamily,
              fontSize: AppSize.s16.sp,
              color: AppColor.mainBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
