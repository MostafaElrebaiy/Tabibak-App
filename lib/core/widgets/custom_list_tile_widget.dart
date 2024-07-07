import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class CustomListTileWidget extends StatelessWidget {
  const CustomListTileWidget(
      {super.key,
      required this.imageWidget,
      required this.title,
      required this.distance,
      required this.onTap});
  final Widget imageWidget;
  final String title;
  final String distance;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppPadding.p4),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: AppColor.primaryBlue.withOpacity(0.9),
          ),
        ),
      ),
      child: ListTile(
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(AppSize.s12),
          child: imageWidget,
        ),
        onTap: onTap,
        splashColor: AppColor.primaryBlue.withOpacity(0.1),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12))),
        dense: false,
        enableFeedback: true,
        horizontalTitleGap: 20,
        contentPadding: EdgeInsetsDirectional.only(
          start: AppPadding.p16.w,
          end: AppPadding.p16.w,
          top: AppPadding.p16.h,
        ),
        title: Padding(
          padding: EdgeInsets.only(bottom: AppPadding.p8.h),
          child: RichText(
            text: TextSpan(
              children: [
                // TextSpan(
                //     text: isHospital ? "hp".tr(context) : "dr".tr(context),
                //     style: AppStyle.f22blackW700Mulish),
                TextSpan(text: title, style: AppStyle.f18BalckW400Mulish)
              ],
            ),
          ),
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  distance.length > 5 ? distance.substring(0, 6) : distance,
                  style: AppStyle.f18BalckW400Mulish.copyWith(
                      color: AppColor.colorACB8C2, fontWeight: FontWeight.w800),
                ),
                horizontalSpace(5),
                const Icon(
                  Icons.location_on_outlined,
                  color: AppColor.primaryBlue,
                ),
              ],
            ),
            // SvgPicture.asset(
            //   AppAsset.phoneIcon,
            //   width: AppSize.s26.w,
            // )
          ],
        ),
      ),
    );
  }
}
