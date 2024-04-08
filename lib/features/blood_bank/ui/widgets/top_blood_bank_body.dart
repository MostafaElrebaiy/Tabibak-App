import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helper/app_assets.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';

class TopSectionBloodBankBody extends StatelessWidget {
  const TopSectionBloodBankBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.mainBlue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'GIVE THE GIFT 0F LIVE',
            style: AppStyle.font30whiteregular,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Donate', style: AppStyle.font30whiteSemiBold),
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                height: 45.h,
                width: 120.w,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  'Blood',
                  textAlign: TextAlign.center,
                  style: AppStyle.font30MainBLueSemiBold,
                ),
              )
            ],
          ),
          verticalSpace(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('150 ', style: AppStyle.font30whiteregular),
                      SvgPicture.asset(AppAsset.blodlIcon),
                    ],
                  ),
                  Text('New blood request\n ',
                      style: AppStyle.font18whiteregular),
                ],
              ),
              // const VerticalDivider(
              //   color: AppColor.white,
              //   indent: 10,
              //   endIndent: 30,
              //   thickness: 1,
              //   width: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  AppAsset.dividerIcon,
                  height: 110,
                ),
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Text('30 ', style: AppStyle.font30whiteregular),
                      SvgPicture.asset(AppAsset.peopleIcon),
                    ],
                  ),
                  Text('People have taken\n           blood',
                      maxLines: 2, style: AppStyle.font18whiteregular),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
