import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/widgets/custom_widget/app_text_button.dart';
import 'package:tabibk/features/product/view/widgets/build_divider_widget.dart';
import 'package:tabibk/features/product/view/widgets/build_product_widget.dart';
import 'package:tabibk/features/product/view/widgets/discount_delivery_section.dart';
import 'package:tabibk/features/product/view/widgets/product_content.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: products.length,
            itemBuilder: (context, index) => BuildProductWidget(index: index),
          ),
        ),
        const BuildDivider(),
        const DiscountAndDeliveryScetion(),
        const BuildDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "totalAmount".tr(context),
              style: AppStyle.f14GrayTwoW600Mulish,
            ),
            Text(
              "312\$",
              style: AppStyle.f18PrimaryBlueW700Mulish,
            )
          ],
        ),
       verticalSpace(30),
        AppTextButton(
          buttonText: "checkOut".tr(context).toUpperCase(),
          onPressed: () {
            context.pushNamed(Routes.checkOutView);
          },
        )
      ],
    );
  }
}
