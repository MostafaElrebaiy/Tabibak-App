import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/font_weight_helper.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/product/presentation/widgets/build_product_icon_button.dart';
import 'package:tabibk/features/product/presentation/widgets/product_content.dart';

class BuildProductWidget extends StatelessWidget {
  BuildProductWidget({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppMargin.m8),
      // width: double.infinity,
      height: AppSize.s145.h,
      decoration: BoxDecoration(
        color: AppColor.white,
        border: Border.all(
            width: AppSize.s1, color: AppColor.primaryBlue.withOpacity(0.23)),
        boxShadow: [
          BoxShadow(
              blurRadius: 4,
              color: AppColor.black.withOpacity(0.1),
              offset: const Offset(2, 4))
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: AppPadding.p6, bottom: AppPadding.p10, right: AppPadding.p10),
        child: Row(
          children: [
            SizedBox(
              height: double.infinity,
              width: 100.w,
              child: Image.asset(
                AppAsset.medication_2,
              ),
            ),
            SizedBox(
              width: AppSize.s10.w,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        products[index].name,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyle.f16BlackW700Mulish,
                      ),
                      PopupMenuButton(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(AppSize.s8))),
                        shadowColor: Colors.white,
                        iconColor: AppColor.color9B9B9B.withOpacity(0.54),
                        itemBuilder: (_) {
                          return [
                            PopupMenuItem(
                                onTap: () {},
                                child: Text(
                                  textAlign: TextAlign.center,
                                  AppString.addToFavorites,
                                  style: AppStyle.font14GrayRegular
                                      .copyWith(color: AppColor.black),
                                )),
                            PopupMenuItem(
                                onTap: () {},
                                child: Text(
                                  textAlign: TextAlign.center,
                                  AppString.deleteFromList,
                                  style: AppStyle.font14GrayRegular
                                      .copyWith(color: AppColor.black),
                                ))
                          ];
                        },
                        onSelected: (select) {},
                      )
                    ],
                  ),
                  Row(

                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              AppString.color,
                              style: AppStyle.f13GrayW400Mulish,
                            ),
                            Text(
                              AppString.blue,
                              style: AppStyle.f13GrayW400Mulish.copyWith(
                                  color: AppColor.dotColorTwo,
                                  fontWeight: FontWeightHelper.bold),
                            )
                          ],
                        ),
                      ),
                   
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              AppString.size,
                              style: AppStyle.f13GrayW400Mulish,
                            ),
                            Text(
                              AppString.m150,
                              style: AppStyle.f13GrayW400Mulish.copyWith(
                                  color: AppColor.dotColorTwo,
                                  fontWeight: FontWeightHelper.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          BuildProductIconButton(
                              onPressed: () {}, isAdd: false),
                          const SizedBox(width: AppSize.s8),
                          Text(
                            "1",
                            style: AppStyle.f16BlackW700Mulish
                                .copyWith(fontWeight: FontWeightHelper.regular),
                          ),
                          const SizedBox(width: AppSize.s8),
                          BuildProductIconButton(onPressed: () {}),
                        ],
                      ),
                      Text(
                        "${products[index].price.toInt()}\$",
                        style: AppStyle.f16BlackW700Mulish,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
