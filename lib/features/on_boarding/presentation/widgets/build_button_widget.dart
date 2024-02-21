import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';


Widget buildButtonWidget({required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,

    // borderRadius:const  BorderRadius.all(
    //   Radius.circular(AppSize.s70),
    // ),
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.all(AppPadding.p8),
      height: AppSize.s40.h,
      width: AppSize.s40.w,
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.all(
        //   Radius.circular(AppSize.s70),
        // ),
        shape: BoxShape.circle,
        color: AppColor.mainBlue,
      ),
      child: SizedBox(
        width: AppSize.s20.w,
        height: AppSize.s20.h,
        child: SvgPicture.asset(
          AppAsset.buttonArrowRight,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
