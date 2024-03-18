import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class CustomListTileWidget extends StatelessWidget {
  const CustomListTileWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.distance,
      this.isHospital = true,
      required this.onTap});
  final String image;
  final String title;
  final String distance;
  final bool isHospital;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(bottom: AppPadding.p4),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
        border: Border(
          bottom: BorderSide(
            width: 5,
            color: AppColor.black.withOpacity(0.1),
          ),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        splashColor: AppColor.primaryBlue.withOpacity(0.1),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12))),
        leading: Image.asset(image),
        dense: false,
        enableFeedback: true,
        horizontalTitleGap: 20,
        contentPadding: EdgeInsets.symmetric(
            vertical: AppPadding.p16.h, horizontal: AppPadding.p16.w),
        title: Padding(
          padding: EdgeInsets.only(bottom: AppPadding.p20.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: isHospital ? AppString.hp : AppString.dr,
                    style: AppStyle.f22blackW700Mulish),
                TextSpan(
                    text: title,
                    style: AppStyle.f22blackW700Mulish
                        .copyWith(fontWeight: FontWeight.w400))
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
                  "$distance",
                  style: AppStyle.f22blackW700Mulish
                      .copyWith(color: AppColor.colorACB8C2),
                ),
                horizontalSpace(5),
                Icon(
                  Icons.location_on_outlined,
                  color: AppColor.primaryBlue,
                  size: AppSize.s26.w,
                ),
              ],
            ),
            SvgPicture.asset(
              AppAsset.phoneIcon,
              width: AppSize.s26.w,
            )
          ],
        ),
      ),
    );
  }
}
