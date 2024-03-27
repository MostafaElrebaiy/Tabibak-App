import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/widgets/build_custom_app_bar.dart';
import 'package:tabibk/features/product/view/widgets/product_screen_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
          text1: "myCart".tr(context),
          backarrow: true,
          style1: AppStyle.f20WhiteW600),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: ProductBody(),
      ),
    );
  }
}
