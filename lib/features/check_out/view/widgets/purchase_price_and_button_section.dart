import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_button.dart';

class PurchasePriceAndButtonSection extends StatelessWidget {
  const PurchasePriceAndButtonSection(
      {super.key, required this.price, required this.onPressed});
  final String price;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "totalAmount".tr(context),
              style: AppStyle.f14GrayTwoW600Mulish,
            ),
            Text(
              price,
              style: AppStyle.f18PrimaryBlueW700Mulish
                  .copyWith(color: AppColor.priceColor),
            )
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        AppTextButton(
          icon: Icons.shopping_bag_outlined,
          thereIcon: true,
          buttonText: "palceOrder".tr(context),
          onPressed: onPressed,
        )
      ],
    );
  }
}
