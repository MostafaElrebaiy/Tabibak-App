import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';

import '../../../../../core/widgets/custom_widget/image2_curve_top_bk.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_colors.dart';

class TopBackgroundForgetPasswordScreen extends StatelessWidget {
  const TopBackgroundForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        CustomPaint(
          size: Size(double.infinity.w, 360.h),
          painter: ForgetImage(),
        ),
        Positioned(
          left: 10,
          top: 35,
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: AppColor.white,
              size: 35,
            ),
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
          ),
        ),
      ]),
    ]);
  }
}
