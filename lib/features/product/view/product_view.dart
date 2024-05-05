import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          backarrow: false,
          style1: AppStyle.f20WhiteW600),
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0.w),
        child: const ProductBody(),
      ),
    );
  }
}
