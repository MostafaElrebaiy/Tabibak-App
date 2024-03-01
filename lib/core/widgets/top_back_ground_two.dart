import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';

import 'custom_widget/image2_curve_top_bk.dart';
import '../theme/app_colors.dart';

class TopBackgroundTwo extends StatelessWidget {
  const TopBackgroundTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CustomPaint(
        size: Size(double.infinity.w, 360.h),
        painter: ForgetImage(),
      ),
      Positioned(
        left: 10,
        top: 35,
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: AppColor.white,
            size: 26.w,
          ),
          onPressed: () {
            context.pop();
          },
        ),
      ),
    ]);
  }
}
