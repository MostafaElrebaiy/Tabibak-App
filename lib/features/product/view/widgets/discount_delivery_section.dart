import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/features/product/view/widgets/build_divider_widget.dart';
import 'package:tabibk/features/product/view/widgets/offer.dart';

class DiscountAndDeliveryScetion extends StatelessWidget {
  const DiscountAndDeliveryScetion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Offer(
            image: AppAsset.promoCodeIcon,
            isFree: false,
            text: AppString.addPromoCode),
        BuildDivider(),
        Offer(
            image: AppAsset.deliveryIcon,
            isFree: true,
            text: AppString.delivery),
      ],
    );
  }
}
