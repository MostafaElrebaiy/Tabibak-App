import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/constant.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/check_out/presentation/widgets/build_purchase_button.dart';
import 'package:tabibk/features/check_out/presentation/widgets/build_purchase_divider.dart';
import 'package:tabibk/features/check_out/presentation/widgets/purchase_img_and_text_section.dart';

class PurchaseWidget extends StatelessWidget {
  const PurchaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColor.white,
      surfaceTintColor: AppColor.white,
      insetPadding:
          EdgeInsets.symmetric(vertical: 0, horizontal: AppPadding.p20.w),
      insetAnimationDuration: const Duration(milliseconds: 300),
      shadowColor: AppColor.shadowColor,
      elevation: 20,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
      child: Padding(
        padding: const EdgeInsets.only(
            top: AppPadding.p10,
            bottom: AppPadding.p20,
            left: AppPadding.p14,
            right: AppPadding.p14),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(
                    Icons.close_rounded,
                    color: AppColor.black,
                    size: AppSize.s26.h,
                  ))
            ],
          ),
          const PurchaseImgAndTextPurchaseSction(),
          SizedBox(height: AppSize.s20.h),
          const BuildPurchaseDivider(),
          SizedBox(height: AppSize.s20.h),
          Text(
            AppString.rate,
            style: AppStyle.font24BlackBold.copyWith(
                fontFamily: secondFontFamily, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: AppSize.s20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(AppAsset.sadRate,
                    colorFilter: const ColorFilter.srgbToLinearGamma()),
              ),
              SizedBox(width: AppSize.s20.w),
              SvgPicture.asset(AppAsset.normalRate),
              SizedBox(width: AppSize.s20.w),
              SvgPicture.asset(AppAsset.happyRate),
            ],
          ),
          SizedBox(height: AppSize.s30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: BuildPurchaseButton(
                  isSubmit: true,
                  onPressed: () {},
                  text: AppString.submit,
                ),
              ),
              SizedBox(
                width: AppSize.s10.w,
              ),
              Expanded(
                flex: 3,
                child: BuildPurchaseButton(
                  isSubmit: false,
                  onPressed: () {},
                  text: AppString.backToHome,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
