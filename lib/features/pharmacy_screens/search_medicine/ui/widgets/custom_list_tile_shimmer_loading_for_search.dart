import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/utilities/set_shimmer_radius_and_color_decroation.dart';

class CustomListTileShimmerLoadingForSearch extends StatelessWidget {
  const CustomListTileShimmerLoadingForSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          height: 100.h,
          padding: EdgeInsets.only(bottom: 5.h),
          margin: EdgeInsets.only(bottom: 10.h, top: 15.h),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
            border: Border(
              bottom: BorderSide(
                width: 5,
                color: AppColor.lightGray.withOpacity(0.5),
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: AppColor.lightGray,
                      highlightColor: AppColor.white,
                      child: Container(
                        width: 100.w,
                        height: 15.h,
                        decoration: setShimmerRadiusAndColorDecroation(),
                      ),
                    ),
                    verticalSpace(15),
                    Shimmer.fromColors(
                      baseColor: AppColor.lightGray,
                      highlightColor: AppColor.white,
                      child: Container(
                        height: 15.h,
                        decoration: setShimmerRadiusAndColorDecroation(),
                      ),
                    ),
                    verticalSpace(15),
                    Shimmer.fromColors(
                      baseColor: AppColor.lightGray,
                      highlightColor: AppColor.white,
                      child: Container(
                        width: 80.w,
                        height: 15.h,
                        decoration: setShimmerRadiusAndColorDecroation(),
                      ),
                    ),
                  ],
                ),
              ),
              horizontalSpace(10),
              Expanded(
                flex: 2,
                child: Shimmer.fromColors(
                  baseColor: AppColor.lightGray,
                  highlightColor: AppColor.white,
                  child: Container(
                    decoration: setShimmerRadiusAndColorDecroation(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
