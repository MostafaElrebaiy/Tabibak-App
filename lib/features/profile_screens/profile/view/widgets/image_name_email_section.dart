import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class ImageNameAndEmailSection extends StatelessWidget {
  const ImageNameAndEmailSection({
    super.key,
    this.pngImage,
    required this.email,
    required this.name,
  });
  final String name;
  final String? pngImage;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: AppColor.primaryBlue,
          radius: 50.w,
          backgroundImage: const AssetImage(AppAsset.staticImageProfile),
          child: pngImage == null
              ? null
              : Image.file(File(pngImage!.toString()), fit: BoxFit.cover),
        ),
        verticalSpace(10),
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
