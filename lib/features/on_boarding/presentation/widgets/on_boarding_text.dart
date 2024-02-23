import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class OnBoardingText extends StatelessWidget {
  const OnBoardingText({super.key, required this.headLine, required this.textBody});
  final String headLine, textBody;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(headLine,
            textAlign: TextAlign.center, style: AppStyle.font24BlacksemiBold),
        const SizedBox(
          height: 8.0,
        ),
        Opacity(
          opacity: 0.6,
          child: Text(
            textBody,
            textAlign: TextAlign.center,
            style: AppStyle.font16WhiteSemiBold.copyWith(
              color: AppColor.black,
            ),
          ),
        ),
      ],
    );
  }
}
