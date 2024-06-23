import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class ImageNameAndDistanceSection extends StatelessWidget {
  const ImageNameAndDistanceSection(
      {super.key,
      required this.title,
      required this.pngImage,
      required this.distance,
      required this.isDoctor,
      required this.name});
  final String title;
  final String name;
  final String pngImage;
  final String distance;
  final bool isDoctor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: AppStyle.f20WhiteW600),
        verticalSpace(5),
        CircleAvatar(
          backgroundColor: AppColor.primaryBlue,
          backgroundImage: NetworkImage(pngImage),
          radius: 50.w,
        ),
        verticalSpace(10),
        isDoctor
            ? RichText(
                text: TextSpan(children: [
                TextSpan(
                  text: "dr".tr(context),
                  style: AppStyle.f22blackW700Mulish,
                ),
                TextSpan(
                  text: name,
                  style: AppStyle.f20BlackW700,
                )
              ]))
            : Text(
                name,
                style: AppStyle.f20BlackW700,
              ),
        verticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              distance,
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
      ],
    );
  }
}
