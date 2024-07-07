import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/widgets/custom_widget/image2_curve_top_bk.dart';

class TopBackgroundOTPScreen extends StatelessWidget {
  const TopBackgroundOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        CustomPaint(
          size: Size(double.infinity.w, 360.h),
          painter: ForgetImage(),
        ),
        Positioned(
          left:
              Localizations.localeOf(context).languageCode == 'ar' ? null : 10,
          right:
              Localizations.localeOf(context).languageCode == 'ar' ? 10 : null,
          top: 50,
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: AppColor.white,
              size: 30,
            ),
            onPressed: () {
              context.pop();
            },
          ),
        ),
      ]),
    ]);
  }
}
