import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/theme/styles.dart';

import '../../../../core/helper/value_manager.dart';
import '../../../../core/theme/app_colors.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220.h,
        width: 120.w,
        decoration: BoxDecoration(
            color: AppColor.moreLightGray,
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(AppPadding.p4),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                AppAsset.comatrixImage,
                height: 150.h,
                width: 160.w,
              ),
              verticalSpace(10.h),
              Text(
                'Mebo Scar Cream',
                style: AppStyle.f10BlackW400,
              ),
              Text(
                '364.75 EGP',
                style: AppStyle.f9BlackW700,
              ),
              Text(
                '429.00 EGP',
                style: AppStyle.f7BlackW600,
              ),
            ],
          ),
        ));
  }
}
