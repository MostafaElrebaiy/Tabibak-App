import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/on_boarding_logo.dart';

class OnBoardingSpecialShape extends StatelessWidget {
  const OnBoardingSpecialShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: AppSize.s351.h,
          child: DecoratedBox(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppSize.s60),
                bottomRight: Radius.circular(AppSize.s60),
              )),
              child: Image.asset(
                AppAsset.onBoardingShape3,
                fit: BoxFit.fill,
              )),
        ),
        SizedBox(
          height: AppSize.s351.h,
          child: const Align(
            alignment: Alignment(0, 0),
            child: OnBoardingLogo(),
          ),
        ),
        Positioned(
          left: AppSize.s20.w,
          top: AppSize.s60.h,
          child: SizedBox(
            width: AppSize.s32.w,
            height: AppSize.s32.h,
            child: InkWell(
              onTap: () {
                context.pushReplacementNamed(Routes.onBoardingView);
              },
              child: Icon(
                Icons.arrow_back,
                size: AppSize.s32.h,
                color: AppColor.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
