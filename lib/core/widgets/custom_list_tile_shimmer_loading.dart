import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/utilities/set_shimmer_radius_and_color_decroation.dart';

class CustomListTileShimmerLoading extends StatelessWidget {
  const CustomListTileShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(bottom: 15.h),
              padding: EdgeInsets.only(bottom: 5.h),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
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
                    child: Container(
                      margin: EdgeInsets.only(right: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Shimmer.fromColors(
                              baseColor: AppColor.lightGray,
                              highlightColor: AppColor.white,
                              child: Container(
                                height: 15.h,
                                decoration:
                                    setShimmerRadiusAndColorDecroation(),
                              )),
                          verticalSpace(5),
                          Shimmer.fromColors(
                              baseColor: AppColor.lightGray,
                              highlightColor: AppColor.white,
                              child: Container(
                                height: 15.h,
                                width: 100.w,
                                decoration:
                                    setShimmerRadiusAndColorDecroation(),
                              )),
                          verticalSpace(15),
                          Shimmer.fromColors(
                              baseColor: AppColor.lightGray,
                              highlightColor: AppColor.white,
                              child: Container(
                                height: 15.h,
                                decoration:
                                    setShimmerRadiusAndColorDecroation(),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Shimmer.fromColors(
                      baseColor: AppColor.lightGray,
                      highlightColor: AppColor.white,
                      child: Container(
                        height: 100.h,
                        decoration: setShimmerRadiusAndColorDecroation(),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
