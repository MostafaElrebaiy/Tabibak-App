import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/spacing.dart';
import '../../../../core/theme/styles.dart';

class TitlesOfSection extends StatelessWidget {
  const TitlesOfSection(
      {required this.title, required this.subTitle, super.key});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        // TextButton(
        //   onPressed: () {},
        //   style: TextButton.styleFrom(
        //     elevation: 0,
        //     padding: EdgeInsets.zero,
        //     surfaceTintColor: AppColor.white,
        //     foregroundColor: AppColor.primaryBlue,
        //   ),
        //   child: Row(
        //     children: [
        //       Text(
        //         AppString.viewAll.tr(context),
        //         style: AppStyle.font112DarkGrayRegular,
        //       ),
        //       const Icon(
        //         Icons.arrow_forward_outlined,
        //         color: AppColor.darkgray,
        //         size: 20,
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
