import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class ImageNameAndEmailSection extends StatelessWidget {
  const ImageNameAndEmailSection({
    super.key,
    this.image,
    required this.email,
    required this.name,
  });
  final String name;
  final dynamic image;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        (image is String)
            ? CircleAvatar(
                backgroundColor: AppColor.white,
                backgroundImage: image == null || image!.isEmpty
                    ? const AssetImage(AppAsset.staticImageProfile)
                        as ImageProvider
                    : NetworkImage(image!),
                radius: 50.w,
              )
            : CircleAvatar(
                backgroundColor: AppColor.white,
                backgroundImage: image == null || image.path.isEmpty
                    ? const AssetImage(AppAsset.staticImageProfile)
                        as ImageProvider
                    : FileImage(image!),
                radius: 50.w,
              ),
        verticalSpace(25),
        SizedBox(
          width: 220.w,
          child: Text(
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            name,
            style: AppStyle.f20BlackW700,
          ),
        ),
        Text(
          email,
          style: AppStyle.f14GrayTwoW600Mulish.copyWith(
              color: AppColor.color9B9B9B, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
