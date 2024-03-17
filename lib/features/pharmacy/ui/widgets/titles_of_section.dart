import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/spacing.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';

// ignore: must_be_immutable
class TitlesOfSection extends StatelessWidget {
  TitlesOfSection({required this.title, required this.subTitle, super.key});
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(title, style: AppStyle.font24BlacksemiBold),
            verticalSpace(5),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                subTitle,
                style: AppStyle.font112DarkGrayRegular,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "View All ",
              style: AppStyle.font112DarkGrayRegular,
            ),
            const Icon(
              Icons.arrow_forward_outlined,
              color: AppColor.darkgray,
              size: 20,
            ),
          ],
        ),
      ],
    );
  }
}
