import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile(
      {super.key,
      required this.title,
      this.svgImage,
      required this.children,
      this.isThereSVG = true});
  final String title;
  final String? svgImage;
  final bool isThereSVG;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.s12),
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
      child: ExpansionTile(
        backgroundColor: AppColor.white,
        leading: isThereSVG ? SvgPicture.asset(svgImage!) : null,
        title: isThereSVG
            ? Text(
                title,
                style: AppStyle.f16BlackW700Mulish,
              )
            : Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 25.w,
                ),
                child: Text(
                  title,
                  style: AppStyle.f16BlackW700Mulish,
                ),
              ),
        collapsedIconColor: AppColor.primaryBlue,
        iconColor: AppColor.primaryBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          side: BorderSide(color: AppColor.gray.withOpacity(0.3)),
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        childrenPadding: EdgeInsets.symmetric(vertical: AppPadding.p12.h),
        tilePadding: EdgeInsets.symmetric(
            vertical: AppPadding.p10.h, horizontal: AppPadding.p10.w),
        children: children,
      ),
    );
  }
}
