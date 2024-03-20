import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class BuildAddShippingAddress extends StatelessWidget {
  const BuildAddShippingAddress(
      {super.key,
      required this.text,
      this.isFree = false,
      this.isShippingAddress = false,
      required this.onPressed});
  final String text;
  final bool isFree;
  final bool isShippingAddress;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: AppPadding.p6.h, horizontal: AppPadding.p18.w),
        decoration: BoxDecoration(
            color: AppColor.checkOutColor.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s45.h)),
            shape: BoxShape.rectangle),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: AppStyle.font14GrayRegular
                    .copyWith(fontSize: AppSize.s16.sp, color: AppColor.black),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                isFree
                    ? Text(
                        AppString.free.toUpperCase(),
                        style: AppStyle.font14GrayRegular.copyWith(
                            fontSize: AppSize.s16.sp, color: AppColor.black),
                      )
                    : const SizedBox(),
                SizedBox(
                  width: AppSize.s8.w,
                ),
                IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      isShippingAddress
                          ? Icons.add
                          : Icons.keyboard_arrow_down_rounded,
                      color: AppColor.black,
                      size: AppSize.s26.w,
                    )),
              ],
            )
          ],
        ));
  }
}
