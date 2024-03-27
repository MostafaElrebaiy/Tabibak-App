import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class BloodBankBody extends StatelessWidget {
  const BloodBankBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 350.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColor.mainBlue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(30),
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
                    margin: const EdgeInsets.only(left: 10),
                    height: 43.h,
                    width: 144.w,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'Blood',
                        style: AppStyle.font30MainBLueSemiBold,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [],
              )
            ],
          ),
        ),
      ],
    );
  }
}
