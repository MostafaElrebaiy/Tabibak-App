import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/features/product/presentation/widgets/build_divider_widget.dart';

class BuildPurchaseDivider extends StatelessWidget {
  const BuildPurchaseDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s170.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: BuildDivider()),
          Transform.rotate(
            angle: 180,
            child: Container(
              width: AppSize.s10,
              height: AppSize.s10,
              decoration: BoxDecoration(
                  color: AppColor.white,
                  // shape: BoxShape.rectangle,
                  border: Border.all(
                      color: AppColor.black.withOpacity(0.2), width: 1)),
            ),
          ),
          const Expanded(child: BuildDivider()),
        ],
      ),
    );
  }
}
