import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/widgets/main_button._widget.dart';
import 'package:tabibk/features/product/presentation/widgets/build_divider_widget.dart';
import 'package:tabibk/features/product/presentation/widgets/build_product_widget.dart';
import 'package:tabibk/features/product/presentation/widgets/discount_delivery_section.dart';
import 'package:tabibk/features/product/presentation/widgets/product_content.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) => BuildProductWidget(index: index),
            )),
        const BuildDivider(),
        const DiscountAndDeliveryScetion(),
        const BuildDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppString.totalAmount,
              style: AppStyle.f14GrayTwoW600Mulish,
            ),
            Text(
              "312\$",
              style: AppStyle.f18PrimaryBlueW700Mulish,
            )
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        MainButtonWidget(
          text: AppString.checkOut.toUpperCase(),
          onPressed: () {
            context.pushNamed(Routes.checkOutView);
          },
        )
      ],
    );
  }
}
