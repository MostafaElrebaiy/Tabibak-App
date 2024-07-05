import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/utilities/set_shimmer_radius_and_color_decroation.dart';

class MedicienItemShimmerLoading extends StatelessWidget {
  const MedicienItemShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: AppColor.moreLightGray,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(AppPadding.p4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Shimmer.fromColors(
                  baseColor: AppColor.lightGray,
                  highlightColor: AppColor.white,
                  child:
                      Container(width: 100.w, decoration: setShimmerRadiusAndColorDecroation()),
                ),
              ),
              verticalSpace(10),
              Shimmer.fromColors(
                baseColor: AppColor.lightGray,
                highlightColor: AppColor.white,
                child: Container(
                  width: 60.w,
                  height: 10.h,
                  decoration: setShimmerRadiusAndColorDecroation(),
                ),
              ),
              verticalSpace(5),
              Shimmer.fromColors(
                baseColor: AppColor.lightGray,
                highlightColor: AppColor.white,
                child: Container(
                  width: 40.w,
                  height: 10.h,
                  decoration: setShimmerRadiusAndColorDecroation(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

 
}
