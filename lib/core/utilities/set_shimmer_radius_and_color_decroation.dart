import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/theme/app_colors.dart';

BoxDecoration setShimmerRadiusAndColorDecroation() {
  return BoxDecoration(
    color: AppColor.white,
    borderRadius: BorderRadius.all(Radius.circular(12.r)),
  );
}
