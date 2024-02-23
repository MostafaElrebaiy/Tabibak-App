import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theme/styles.dart';

class OrLoginWith extends StatelessWidget {
  const OrLoginWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Or login with', style: AppStyle.font12GrayRegular),
                  verticalSpace(16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/svg/google.svg'),
                      horizontalSpace(16.w),
                      SvgPicture.asset('assets/images/svg/apple.svg'),
                      horizontalSpace(16.w),
                      SvgPicture.asset('assets/images/svg/faceBook.svg'),
                    ],
                  ),
    ],);
  }
}