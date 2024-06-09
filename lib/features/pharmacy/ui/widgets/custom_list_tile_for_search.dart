import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

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
  final String image;
  final bool thereTrailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   padding: EdgeInsets.only(
    //     left: AppPadding.p10.w,
    //     right: AppPadding.p20.w,
    //   ),
    //   decoration: BoxDecoration(
    //     color: AppColor.white,
    //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
    //     border: Border.all(
    //       color: AppColor.gray.withOpacity(0.4),
    //     ),
    //     boxShadow: [
    //       BoxShadow(
    //         color: AppColor.gray.withOpacity(0.2),
    //         spreadRadius: 1,
    //         blurRadius: 1,
    //         offset: const Offset(0, 1),
    //       ),
    //     ],
    //   ),
    //   child: ListTile(
    //     contentPadding: EdgeInsets.zero,
    //     onTap: onTap,
    //     splashColor: AppColor.primaryBlue.withOpacity(0.1),
    //     title: Text(title, style: AppStyle.f16BlackW700Mulish),
    //     isThreeLine: true,
    //     subtitle: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text(
    //           "Details: $details",
    //           style: AppStyle.f14GrayTwoW600Mulish,
    //         ),
    //         Text(
    //           "Price: $price",
    //           style: AppStyle.f14GrayTwoW600Mulish,
    //         )
    //       ],
    //     ),
    //     trailing: Container(
    //       margin: EdgeInsets.only(top: 5.h),
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.circular(6),
    //         child: Image.asset(
    //           image,
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //   ),
    // ------------------- Style Two For Medicine Search ------------------- //
    return Card(
      elevation: 10,
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
              Border(bottom: BorderSide(color: AppColor.mainBlue, width: 2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppStyle.f16BlackW700Mulish,
                    ),
                  ],
                ),
                Text(
                  "Details: $details",
                  style: AppStyle.f14BlackW700
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                Text(
                  "Price: $price",
                  style: AppStyle.f14GrayTwoW600Mulish,
                )
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                image,
                width: 70.w,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
