import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helper/spacing.dart';

class OrSignUpWith extends StatelessWidget {
  const OrSignUpWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/svg/google.svg'),
        horizontalSpace(16.w),
        SvgPicture.asset('assets/images/svg/apple.svg'),
        horizontalSpace(16.w),
        SvgPicture.asset('assets/images/svg/faceBook.svg'),
      ],
    );
  }
}
