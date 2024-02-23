import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/product/presentation/widgets/product_screen_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.white,
        ),
        backgroundColor: AppColor.appbar,
        title: Text(
          AppString.myCart,
          style: AppStyle.f20WhiteW600,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: ProductBody(),
      ),
    );
  }
}
