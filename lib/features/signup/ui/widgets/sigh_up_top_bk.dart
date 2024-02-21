import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/helper/login_and_sign_up_top_bk.dart';

class SignUpTopBackground extends StatelessWidget {
  const SignUpTopBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
            Stack(children: [
              CustomPaint(
                size: Size(double.infinity.w, 275.h),
                painter: LoginImage(),
              ),
              Positioned(
                top: 95.h,
                left: 25.w,
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'P',
                      style: AppStyle.font40MainBlueMedium,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 200.h,
                left: 16.w,
                child: Text(
                  'Create Account',
                  style: AppStyle.font24WhiteBold,
                ),
              ),
            ]),
          ]);
  }
}