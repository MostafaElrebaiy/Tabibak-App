import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/theme/app_colors.dart';

import 'font_weight_helper.dart';

abstract class AppStyle {
  static TextStyle font10primaryBlueRegular = TextStyle(
    // Already
    fontSize: 10.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.primaryBlue,
  );
  static TextStyle font112DarkGrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.darkgray,
  );

  static TextStyle font12primaryBlueSemiBold = TextStyle(
    // Already

    fontSize: 12.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.primaryBlue,
  );
  static TextStyle font12GrayRegular = TextStyle(
    //Or
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.gray,
  );
  static TextStyle font12BlackRegular = TextStyle(
    //accept
    //Or
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.gray,
  );

  static TextStyle font14GrayRegular = TextStyle(
    //hintText
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.gray,
  );
  static TextStyle f7BlackW600 = TextStyle(
      //hintText
      fontSize: 7.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColor.gray,
      decoration: TextDecoration.lineThrough);
  static TextStyle f9BlackW700 = TextStyle(
    //hintText
    fontSize: 9.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.black,
  );
  static TextStyle f10BlackW400 = TextStyle(
    //hintText
    fontSize: 10.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.black,
  );
  static TextStyle f14BlackW700 = TextStyle(
    //hintText
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.black,
  );
  static TextStyle f14primaryBlueW700 = TextStyle(
    //hintText
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.primaryBlue,
  );

  static TextStyle font14BlackSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.black,
  );
  static TextStyle font14GraySemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.gray,
  );
  static TextStyle font15GraySemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.gray,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.darkBlue,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.white,
  );
  static TextStyle font16lightGrayRegular = TextStyle(
    //OnBoarding
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.lightGray,
  );
  static TextStyle font16blackRegular = TextStyle(
    //OnBoarding
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.black,
  );
  static TextStyle font16primaryBlueBold = TextStyle(
    //OnBoarding
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.primaryBlue,
  );
  static TextStyle font16GrayBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.gray,
  );
  static TextStyle font20GrayBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.gray,
  );

  static TextStyle font18whiteregular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.white,
  );

  static TextStyle font24BlacksemiBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.black,
  );

  static TextStyle f20BlackW700 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.black,
  );

  static TextStyle f22blackW700Mulish = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.black,
  );
  static TextStyle f22primaryBlueBold = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.primaryBlue,
  );
  static TextStyle font24WhiteBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.white,
  );
  static TextStyle font40primaryBlueMedium = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.primaryBlue,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.primaryBlue,
  );

  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.darkBlue,
  );

  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.darkBlue,
  );

  static TextStyle f16BlackW700Mulish = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.dotColorTwo,
  );

  static TextStyle f13GrayW400Mulish = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.color9B9B9B,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.gray,
  );

  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.primaryBlue,
  );
  static TextStyle f20WhiteW600 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.white,
  );

  static TextStyle f14GrayTwoW600Mulish = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.color9B9B9B,
  );
  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.lightGray,
  );

  static TextStyle font14DarkBluesemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.darkBlue,
  );
  static TextStyle font15DarkBlueMedium = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.darkBlue,
  );
  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );

  static TextStyle f18PrimaryBlueW700Mulish = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.primaryBlue,
  );
  static TextStyle f18BalckW400Mulish = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.black,
  );
  static TextStyle f20Bold = TextStyle(
    //blood type text
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.primaryBlue,
  );

  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.primaryBlue,
  );
  static TextStyle font30whiteregular = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.white,
  );
  static TextStyle font30whiteSemiBold = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.white,
  );
  static TextStyle font30primaryBlueSemiBold = TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColor.primaryBlue);
}
