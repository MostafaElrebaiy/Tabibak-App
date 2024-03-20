import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/constant.dart';
import 'package:tabibk/core/theme/styles.dart';

class Offer extends StatelessWidget {
  const Offer(
      {super.key,
      required this.image,
      required this.isFree,
      required this.text});
  final String image;
  final String text;
  final bool isFree;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
      contentPadding: EdgeInsets.only(
        left: AppSize.s16.w,
        right: AppSize.s50.w,
      ),
      // titleAlignment: ListTileTitleAlignment.center,
      leading: SizedBox(
        height: AppSize.s30.h,
        child: Image.asset(
          image,
          // fit: BoxFit.fill,
        ),
      ),
      onTap: () {},
      minVerticalPadding: 0,
      trailing: isFree
          ? Text(
              AppString.free,
              style: AppStyle.font14GrayRegular.copyWith(
                  color: AppColor.black, fontFamily: secondFontFamily),
            )
          : const SizedBox(),
      title: Text(
        text,
        style: AppStyle.font14DarkBlueMedium
            .copyWith(color: AppColor.black, fontFamily: secondFontFamily),
      ),
    );
  }
}
