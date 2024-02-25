import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          left: 20.w,
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'P',
                style: AppStyle.font40MainBlueMedium,
              ),
            ),
          ),
        ),
        Positioned(
          top: 232.h,
          left: 16.w,
          child: Text(
            'Welcome!',
            style: AppStyle.font24WhiteBold,
          ),
        ),
      ]),
    ]);
  }
}
