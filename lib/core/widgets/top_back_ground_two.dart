import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/theme/styles.dart';

import 'custom_widget/image2_curve_top_bk.dart';
import '../theme/app_colors.dart';

class TopBackgroundTwo extends StatelessWidget {
  const TopBackgroundTwo(
      {super.key,
      this.thereTitle = false,
      this.title = '',
      this.thereIsBackButton = true});
  final bool thereTitle;
  final bool thereIsBackButton;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CustomPaint(
        size: Size(double.infinity.w, 360.h),
        painter: ForgetImage(),
      ),
      Positioned(
        left: Localizations.localeOf(context).languageCode == 'ar' ? null : 10,
        right: Localizations.localeOf(context).languageCode == 'ar' ? 10 : null,
        top: 35,
        child: Row(
          children: [
            thereIsBackButton
                ? IconButton(
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: AppColor.white,
                      size: 26.w,
                    ),
                    onPressed: () {
                      context.pop();
                    },
                  )
                : SizedBox(
                    width: 25.w,
                  ),
            if (thereTitle)
              Row(
                children: [
                  Text(
                    title,
                    style: AppStyle.f20WhiteW600,
                  ),
                ],
              ),
          ],
        ),
      ),
    ]);
  }
}
