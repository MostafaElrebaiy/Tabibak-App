import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/department_model/department_response.dart';

class DepartmentItem extends StatelessWidget {
  const DepartmentItem(
      {super.key,
      required this.department,
      required this.index,
      this.isSelected = false});
  final DepartmentResponse department;
  final int index;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        Container(
          decoration: BoxDecoration(
            color: isSelected ? AppColor.primaryBlue : null,
            shape: BoxShape.circle,
          ),
          child: CachedNetworkImage(
            imageUrl: department.data?[index].image ??
                "https://th.bing.com/th/id/OIP.Hm0WkmjOz3mcv43X_25wSwHaE5?w=1080&h=715&rs=1&pid=ImgDetMain",
            width: isSelected ? 75.w : 70.w,
            height: isSelected ? 75.h : 70.h,
            fit: BoxFit.cover,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Shimmer.fromColors(
              baseColor: AppColor.lightGray,
              highlightColor: AppColor.white,
              child: Container(
                width: isSelected ? 75.w : 70.w,
                height: isSelected ? 75.h : 70.h,
                decoration: const BoxDecoration(
                  color: AppColor.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            imageBuilder: (context, imageProvider) => Container(
              width: isSelected ? 75.w : 70.w,
              height: isSelected ? 75.h : 70.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            fadeInDuration: const Duration(milliseconds: 250),
            errorWidget: (context, url, error) => Container(
              width: isSelected ? 75.w : 70.w,
              height: isSelected ? 75.h : 70.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AppAsset.comatrixImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        verticalSpace(10),
        Flexible(
          child: Text(
            department.data?[index].nameen ?? '',
            softWrap: true,
            style: AppStyle.f14BlackW700.copyWith(
                fontWeight: isSelected ? null : FontWeight.w500,
                color: isSelected ? AppColor.primaryBlue : null),
          ),
        ),
      ],
    );
  }
}
