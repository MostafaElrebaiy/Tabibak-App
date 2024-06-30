import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/utilities/to_capitalize.dart';

class ImageNameAndDistanceSection extends StatelessWidget {
  const ImageNameAndDistanceSection(
      {super.key,
      required this.title,
      required this.pngImage,
      required this.distance,
      required this.name,
      this.isImage = false});
  final String title;
  final String name;
  final String pngImage;
  final String distance;
  final bool isImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: AppStyle.f20WhiteW600),
        verticalSpace(5),
        isImage
            ? (pngImage.isEmpty
                ? CircleAvatar(
                backgroundColor: AppColor.primaryBlue,
                backgroundImage: const AssetImage(AppAsset.staticProfileImage) ,
                radius: 50.w,
              )
                : CircleAvatar(
                backgroundColor: AppColor.primaryBlue,
                backgroundImage: NetworkImage(pngImage) ,
                radius: 50.w,
              ))
            : verticalSpace(60),
        verticalSpace(10),
        Flexible(
          child: Text(
            toCapitalize(name),
            style: AppStyle.f20BlackW700,
          ),
        ),
        verticalSpace(5),
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
