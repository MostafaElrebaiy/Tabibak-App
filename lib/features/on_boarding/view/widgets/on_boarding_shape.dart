import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/features/on_boarding/view/widgets/on_boarding_logo.dart';

class OnBoardingShape extends StatelessWidget {
  const OnBoardingShape({super.key, required this.shape});
  final String shape;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: AppSize.s512.h,
          width: double.infinity,
          child: Image.asset(shape, fit: BoxFit.fill),
        ),
        Positioned(
          top: AppSize.s0,
          right: AppSize.s0,
          child: SizedBox(
            width: AppSize.s120.w,
            height: AppSize.s100.h,
            child: Opacity(
              opacity: 0.8,
              child: SvgPicture.asset(
                AppAsset.onBoardingSubShape,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          top: AppSize.s145.h,
          left: AppSize.s20.w,
          child: const OnBoardingLogo(),
        ),
      ],
    );
  }
}
