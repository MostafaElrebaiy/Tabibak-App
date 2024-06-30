import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  CategoryItem({required this.image, required this.categoryName, super.key});
  String image;
  String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16.h),
        Container(
          decoration: BoxDecoration(
              color: AppColor.colorF0F0F0,
              borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.all(AppPadding.p24),
          // child: SvgPicture.asset('assets/images/svg/Painkillers.svg'),
          child: Image.asset(image),
        ),
        verticalSpace(10.h),
        Text(categoryName)
      ],
    );
  }
}
