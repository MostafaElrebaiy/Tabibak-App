import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';

Widget buildLogoWidget() {
  return SizedBox(
    height: AppSize.s100.h,
    width: AppSize.s100.w,
    child: AnimatedContainer(
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 500),
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColor.primaryBlue),
      child: Center(
        child:Image.asset(AppAsset.splash),
      ),
    ),
  );
}
