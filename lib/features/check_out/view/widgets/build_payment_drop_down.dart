import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/font_weight_helper.dart';
import 'package:tabibk/core/theme/styles.dart';

class BuildPaymentDropDown extends StatefulWidget {
  const BuildPaymentDropDown({super.key});

  @override
  State<BuildPaymentDropDown> createState() => _BuildPaymentDropDownState();
}


class _BuildPaymentDropDownState extends State<BuildPaymentDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppPadding.p4.h, horizontal: AppPadding.p18.w),
      decoration: BoxDecoration(
          color: AppColor.checkOutColor.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s45.h)),
          shape: BoxShape.rectangle),
      child: DropdownMenu(
        trailingIcon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: AppColor.black,
          size: AppSize.s26.w,
        ),
        inputDecorationTheme: const InputDecorationTheme(
            fillColor: AppColor.white,
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero),
        menuStyle: const MenuStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.zero),
          backgroundColor: MaterialStatePropertyAll(AppColor.white),
          elevation: MaterialStatePropertyAll(0),
          side: MaterialStatePropertyAll(BorderSide.none),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(side: BorderSide.none),
          ),
        ),
        expandedInsets: EdgeInsets.zero,
        hintText: "selectPaymentMethod".tr(context),
        textStyle: AppStyle.font14GrayRegular
            .copyWith(fontSize: AppSize.s16.sp, color: AppColor.black),
        dropdownMenuEntries: [
          DropdownMenuEntry(
            value: "cashOnDelivery".tr(context),
            label: "cashOnDelivery".tr(context),
            labelWidget: Text(
              "cashOnDelivery".tr(context),
              style: AppStyle.f16BlackW700Mulish
                  .copyWith(fontWeight: FontWeightHelper.medium),
            ),
          ),
          DropdownMenuEntry(
            value: "vodafone".tr(context),
            label: "vodafone".tr(context),
            labelWidget: Text(
              "vodafone".tr(context),
              style: AppStyle.f16BlackW700Mulish
                  .copyWith(fontWeight: FontWeightHelper.medium),
            ),
          )
        ],
      ),
      // DropdownButton(
      //     icon: Icon(
      //       Icons.keyboard_arrow_down_rounded,
      //       color: AppColor.black,
      //       size: AppSize.s26.w,
      //     ),
      //     hint: Text(
      //       AppString.selectPaymentMethod,
      //       style: AppStyle.font14GrayRegular
      //           .copyWith(fontSize: AppSize.s16.sp, color: AppColor.black),
      //     ),
      //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      //     isExpanded: true,
      //     value: value,
      //     underline: const SizedBox(),
      //     items: [
      //       DropdownMenuItem(
      //         value: AppString.selectPaymentMethod,
      //         enabled: false,
      //         child: Text(
      //           AppString.selectPaymentMethod,
      //           style: AppStyle.f16BlackW700Mulish
      //               .copyWith(fontWeight: FontWeightHelper.medium),
      //         ),
      //       ),
      //       DropdownMenuItem(
      //         value: AppString.cashOnDelivery,
      //         onTap: () {
      //           setState(() {
      //             value = AppString.cashOnDelivery;
      //           });
      //         },
      //         child: Text(
      //           AppString.cashOnDelivery,
      //           style: AppStyle.f16BlackW700Mulish
      //               .copyWith(fontWeight: FontWeightHelper.medium),
      //         ),
      //       ),
      //       DropdownMenuItem(
      //         value: AppString.vodafone,
      //         onTap: () {
      //           setState(() {
      //             value = AppString.vodafone;
      //             // ToDo: Finish the all paymrnt logic
      //           });
      //         },
      //         child: Text(
      //           AppString.vodafone,
      //           style: AppStyle.f16BlackW700Mulish
      //               .copyWith(fontWeight: FontWeightHelper.medium),
      //         ),
      //       ),
      //     ],
      //     onChanged: (v) {
      //       v = value;
      //     }),
    );
  }
}
