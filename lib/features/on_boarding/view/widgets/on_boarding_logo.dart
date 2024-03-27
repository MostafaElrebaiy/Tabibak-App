import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';

class OnBoardingLogo extends StatelessWidget {
  const OnBoardingLogo({super.key});

  @override
  Widget build(BuildContext context) {
   return SizedBox(
      // width: AppSize.s71.w,
      // height: AppSize.s71.h,
      child: SvgPicture.asset(
        AppAsset.onBoardingLogo,
      ),
    );
  }
}

