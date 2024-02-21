import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';


Widget buildDotWidget({required int index,required int currentPage }){
  return  Container(
    margin:const EdgeInsets.only(right: AppMargin.m4),
    width: currentPage ==  index ?AppSize.s36.w: AppSize.s10.w ,
    height: AppSize.s4.h,
    decoration: BoxDecoration(
      color: currentPage ==  index ?AppColor.dotColorTwo:AppColor.dotColor.withOpacity(0.4),
      borderRadius: const BorderRadius.all(
        Radius.circular(AppSize.s17),
      ),
    ),
  );
}