import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class CustomListTileForSearch extends StatelessWidget {
  const CustomListTileForSearch(
      {super.key,
      required this.title,
      this.onTap,
      this.thereTrailing = false,
      required this.details,
      this.destance,
      this.thereDistance = true});
  final String title;
  final String details;
  final String? destance;
  final bool thereDistance;
  final bool thereTrailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppPadding.p10.h, horizontal: AppPadding.p10.w),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
        border: Border.all(
          color: AppColor.gray.withOpacity(0.4),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.gray.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: onTap,
        splashColor: AppColor.primaryBlue.withOpacity(0.1),
        title: Text(
          title,
          style: AppStyle.f16BlackW700Mulish,
        ),
        isThreeLine: true,
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Details: $details",
              style: AppStyle.f14GrayTwoW600Mulish,
            ),
            thereDistance
                ? Text(
                    "Destance: $destance",
                    style: AppStyle.f14GrayTwoW600Mulish,
                  )
                : const SizedBox(),
          ],
        ),
        trailing: thereTrailing
            ? Icon(
                Icons.arrow_forward_ios_rounded,
                size: 22.w,
                color: AppColor.gray.withOpacity(0.8),
              )
            : null,
      ),
      // ------------------- Style Two For Medicine Search ------------------- //
      /*** 
    Card(
      elevation: 2,
      borderOnForeground: false,
      color: AppColor.white,
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: AppStyle.f16BlackW700Mulish,
                ),
              ],
            ),
            Text(
              "Details: $details",
              style:
                  AppStyle.f14BlackW700.copyWith(fontWeight: FontWeight.w400),
            ),
            destance != null
                ? Text(
                    "Destance: $destance",
                    style: AppStyle.f14BlackW700
                        .copyWith(fontWeight: FontWeight.w400),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  
    */
    );
  }
}
