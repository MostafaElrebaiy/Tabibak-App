import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: AppSize.s40.h,
        width: AppSize.s40.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.primaryBlue,
        ),
        child: SvgPicture.asset(
          AppAsset.buttonArrowRight,
        ),
      ),
    );
  }
}
