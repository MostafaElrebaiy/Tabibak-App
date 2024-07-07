import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/custom_widget/image1_curve_top_bk.dart';

class SignUpTopBackground extends StatelessWidget {
  const SignUpTopBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        CustomPaint(
          size: Size(double.infinity.w, 275.h),
          painter: LoginImage(),
        ),
        Positioned(
          top: 60.h,
          left: 15.w,
          child: SvgPicture.asset(
            AppAsset.onBoardingLogo,
            height: 150.h,
          ),
        ),
        Positioned(
          top: 205.h,
          left: 18.w,
          child: Text(
            "createAccount".tr(context),
            style: AppStyle.font24WhiteBold,
          ),
        ),
      ]),
    ]);
  }
}
