import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';

import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/custom_widget/image1_curve_top_bk.dart';

class TopBackgroundLoginScreen extends StatelessWidget {
  const TopBackgroundLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        CustomPaint(
          size: Size(double.infinity.w, 360.h),
          painter: LoginImage(),
        ),
        Positioned(
          top: 114.h,
          left: 1.w,
          child: SvgPicture.asset(AppAsset.onBoardingLogo, height: 150.h,  ),
        ),
        Positioned(
          top: 255.h,
          left: 23.w,
          child: Text(
            "welcome".tr(context),
            style: AppStyle.font24WhiteBold,
          ),
        ),
      ]),
    ]);
  }
}
