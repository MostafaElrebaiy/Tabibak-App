import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';

class BuildHospitalAppBarAction extends StatelessWidget {
  const BuildHospitalAppBarAction({super.key, required this.onTap,  this.icon, this.right, this.top, this.left, this.bottom});
  final VoidCallback onTap;
  final Icon? icon;
  final double? right;
  final double? top;
  final double? left;
  final double? bottom;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: AppPadding.p10.w, top: AppPadding.p10.h),
      child: Stack(
        children: [
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12),
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: icon
          ),
          Positioned(
            right: right,
            bottom: bottom,
            top:top,
            left:left,
            child: Container(
              width: AppSize.s8.w,
              height: AppSize.s8.h,
              decoration: const BoxDecoration(
                  color: AppColor.notificationsDotColor,
                  shape: BoxShape.circle),
            ),
          ),
        ],
      ),
    );
  }
}
