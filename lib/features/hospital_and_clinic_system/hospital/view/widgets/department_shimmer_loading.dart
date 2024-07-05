import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/utilities/set_shimmer_radius_and_color_decroation.dart';

class DepartmentShimmerLoading extends StatelessWidget {
  const DepartmentShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              right: 20,
              bottom: 10.h,
              left: index == 0 ? 20 : 0,
            ),
            child: Column(
              children: [
                verticalSpace(16),
                Shimmer.fromColors(
                    baseColor: AppColor.lightGray,
                    highlightColor: AppColor.white,
                    child: Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: const BoxDecoration(
                        color: AppColor.lightGray,
                        shape: BoxShape.circle,
                      ),
                    )),
                verticalSpace(10),
                Shimmer.fromColors(
                  baseColor: AppColor.lightGray,
                  highlightColor: AppColor.white,
                  child: Container(
                    width: 40.w,
                    height: 10.h,
                    decoration: setShimmerRadiusAndColorDecroation(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
