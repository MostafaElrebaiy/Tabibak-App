import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';

Widget buildTextWidget({required String headLine,required String textBody}){
  
  return  SizedBox(
    // height: AppSize.s150.h,
    width: AppSize.s295.w,
    child: Column(
      children: [
        Text(
          headLine,
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColor.black,
            fontSize: AppSize.s24.sp,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Opacity(
          opacity: 0.6,
          child: Text(
            textBody,
            textAlign: TextAlign.center,
            style:  TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.w400,
              fontSize: AppSize.s16.sp,
            ),
          ),
        ),
      ],
    ),
  );
}