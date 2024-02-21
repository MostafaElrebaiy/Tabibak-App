import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/routing/custom_page_route.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/build_create_account_button.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/build_login_button.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/build_on_boarding_logo.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/build_text_widget.dart';

class OnBoardingLast extends StatelessWidget {
  const OnBoardingLast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
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
                child: Align(
                  alignment: const Alignment(0, 0),
                  child: buildOnBoardingLogo(),
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
          ),
          SizedBox(
            height: AppSize.s37.h,
          ),
          buildTextWidget(
              headLine: AppString.pharmacies, textBody: AppString.lorem),
          SizedBox(
            height: AppSize.s30.h,
          ),
          SizedBox(
            // width: AppSize.s343.w,
            // height: AppSize.s120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildLoginButton(text: AppString.login, onPressed: () {}),
                SizedBox(
                  height: AppSize.s10.h,
                ),
                buildCreateAccountButton(
                    text: AppString.createAccount, onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
