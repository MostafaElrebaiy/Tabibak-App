import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/pharmacy/data/model/pharmacy_medicien_response.dart';

import '../../../../core/helper/value_manager.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_colors.dart';

class MedicineItem extends StatelessWidget {
  const MedicineItem({super.key, required this.medicine});
  final Data medicine;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220.h,
        width: 120.w,
        decoration: BoxDecoration(
            color: AppColor.moreLightGray,
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(AppPadding.p4),
        child: Center(
          child: GestureDetector(
            onTap: () {
              context.pushNamed(Routes.pharmacyDetailsScreen);
            },
            child: Column(
              children: [
                Image.asset(
                medicine.image??  AppAsset.comatrixImage,
                  height: 150.h,
                  width: 160.w,
                ),
                verticalSpace(10),
                Text(
                  medicine.name ?? "",
                  style: AppStyle.f10BlackW400,
                ),
                Text(
                  medicine.price.toString(),
                  style: AppStyle.f9BlackW700,
                ),
                Text(
                  (medicine.price! + 50).toString(),
                  style: AppStyle.f7BlackW600,
                ),
              ],
            ),
          ),
        ));
  }
}