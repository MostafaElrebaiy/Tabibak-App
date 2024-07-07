import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/utilities/set_shimmer_radius_and_color_decroation.dart';

class CustomListTileForSearch extends StatelessWidget {
  const CustomListTileForSearch({
    super.key,
    required this.title,
    this.onTap,
    this.thereTrailing = false,
    required this.details,
    required this.price,
    required this.image,
  });
  final String title;
  final String details;
  final String price;
  final String? image;
  final bool thereTrailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      borderOnForeground: false,
      color: AppColor.white,
      margin: EdgeInsets.zero, // We Change The Margin To Zero
      surfaceTintColor: AppColor.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: AppPadding.p10.h, horizontal: AppPadding.p10.w),
        decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
          border:
              Border(bottom: BorderSide(color: AppColor.primaryBlue, width: 2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyle.f16BlackW700Mulish,
                  ),
                  Text(
                    "Details: $details",
                    style: AppStyle.f14BlackW700
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Price: $price",
                    style: AppStyle.f14GrayTwoW600Mulish,
                  ),
                ],
              ),
            ),
            SizedBox(
                width: 10.w), // Add some spacing between the text and image
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: image == null || image!.isEmpty
                  ? Image.asset(
                      AppAsset.comatrixImage,
                      height: 100.h,
                      width: 100.w,
                    )
                  : CachedNetworkImage(
                      imageUrl: image!,
                      height: 100.h,
                      width: 100.w,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              Shimmer.fromColors(
                        baseColor: AppColor.lightGray,
                        highlightColor: AppColor.white,
                        child: Container(
                            width: 100.w,
                            height: 100.h,
                            decoration: setShimmerRadiusAndColorDecroation()),
                      ),
                      imageBuilder: (context, imageProvider) => Container(
                        width: 100.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.all(Radius.circular(12.r)),
                          image: DecorationImage(
                            image: imageProvider,
                          ),
                        ),
                      ),
                      fadeInDuration: const Duration(milliseconds: 250),
                      errorWidget: (context, url, error) => Container(
                        decoration: setShimmerRadiusAndColorDecroation(),
                        child: Image.asset(
                          AppAsset.comatrixImage,
                          height: 100.h,
                          width: 100.w,
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
