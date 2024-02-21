import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/value_manager.dart';

Widget buildOnBoardingLogo(){
  return SizedBox(
    width: AppSize.s71.w,
    height: AppSize.s71.h,
    child: SvgPicture.asset(
      AppAsset.onBoardingLogo,
      fit: BoxFit.fill,
    ),
  );
}