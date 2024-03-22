import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

Widget buildCreateAccountButton(
    {required String text, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: AppSize.s337.w,
      padding: EdgeInsets.zero,
      // height: AppSize.s48.h,
      decoration: BoxDecoration(
        border: Border.all(
          width: AppSize.s1,
          color: AppColor.primaryBlue,
        ),
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            blurRadius: AppSize.s4,
            blurStyle: BlurStyle.outer,
            color: AppColor.buttonShadowColor.withOpacity(0.2),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s250.w),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppPadding.p12.h),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style:
              AppStyle.font16MainBLueBold.copyWith(color: AppColor.primaryBlue),
        ),
      ),
    ),
  );
}
