import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.title,
      required this.image,
      required this.isSvgImage});
  final String title;
  final String image;
  final bool isSvgImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppPadding.p10.h, horizontal: AppPadding.p10.w),
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
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: () {},
        splashColor: AppColor.primaryBlue.withOpacity(0.1),
        leading: isSvgImage ? SvgPicture.asset(image) : Image.asset(image),
        title: Text(
          title,
          style: AppStyle.f16BlackW700Mulish,
        ),
      ),
    );
  }
}