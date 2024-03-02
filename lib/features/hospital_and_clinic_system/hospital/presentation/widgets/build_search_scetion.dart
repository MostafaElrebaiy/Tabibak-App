import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/constant.dart';
import 'package:tabibk/core/theme/styles.dart';

class BuildSearchScetion extends StatelessWidget {
  const BuildSearchScetion({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
                left: AppPadding.p16.w,
                top: AppPadding.p10.h,
                bottom: AppPadding.p10.h),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s250.w)),
                border: Border.all(width: 2, color: AppColor.colorF5F5F5)),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: AppColor.black.withOpacity(0.4),
                  size: AppSize.s24.w,
                ),
                SizedBox(
                  width: AppSize.s10.w,
                ),
                Text(
                  AppString.searchDepartment,
                  style: AppStyle.f14BlackW700.copyWith(
                    color: AppColor.black.withOpacity(0.4),
                    fontFamily: secondFontFamily,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          // padding: EdgeInsets.all(AppPadding.p8.w),
          height: AppSize.s38.h,
          width: AppSize.s38.w,
          decoration:const  BoxDecoration(
              color: AppColor.colorF5F5F5, shape: BoxShape.circle),
          child: IconButton(
            icon: Image.asset(AppAsset.hospitalSearchFilter),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
