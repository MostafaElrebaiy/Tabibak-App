import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class BuildShippingAddress extends StatelessWidget {
  const BuildShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        border: Border.all(color: AppColor.black.withOpacity(0.2), width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p16, vertical: AppPadding.p14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "alex".tr(context),
                    style: AppStyle.f18BalckW400Mulish,
                  ),
                  Text(
                    "addres".tr(context),
                    style: AppStyle.font14GrayRegular,
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  // alignment: Alignment.bottomCenter,
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 24.h,
                    color: AppColor.grayScale,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
