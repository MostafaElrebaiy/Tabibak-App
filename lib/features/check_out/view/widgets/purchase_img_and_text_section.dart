import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/font_weight_helper.dart';
import 'package:tabibk/core/theme/styles.dart';

class PurchaseImgAndTextPurchaseSction extends StatelessWidget {
  const PurchaseImgAndTextPurchaseSction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AppAsset.bagImg),
        SizedBox(
          height: AppSize.s30.h,
        ),
        Text(
          "success".tr(context),
          style:
              AppStyle.font24BlackBold,
        ),
        SizedBox(
          height: AppSize.s20.h,
        ),
        Text(
          "orderWillGetSoon".tr(context),
          style: AppStyle.f14GrayTwoW600Mulish
              .copyWith(fontWeight: FontWeightHelper.regular),
        ),
      ],
    );
  }
}
