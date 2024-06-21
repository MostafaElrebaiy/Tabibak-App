import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/pharmacy/data/model/pharmacy_medicine/pharmacy_medicien_response.dart';

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
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(AppPadding.p4),
      child: Center(
        child: GestureDetector(
          onTap: () {
            context.pushNamed(Routes.pharmacyDetailsScreen);
          },
          child: Column(
            children: [
              medicine.image == null
                  ? Image.asset(
                      AppAsset.comatrixImage,
                      height: 100.h,
                      width: 100.w,
                    )
                  : Image.network(
                      medicine.image!,
                      height: 100.h,
                      width: 100.w,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          AppAsset.comatrixImage,
                          height: 100.h,
                          width: 100.w,
                        );
                      },
                    ),
              Text(
                medicine.name ?? "",
                style: AppStyle.f16BlackW700Mulish.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                medicine.price.toString(),
                style: AppStyle.f16BlackW700Mulish.copyWith(
                  color: AppColor.primaryBlue,
                ),
              ),
              // Text(
              //   (medicine.price! + Random().nextInt(20)).toString(),
              //   style: AppStyle.f14BlackW700.copyWith(
              //     decoration: TextDecoration.lineThrough,
              //     color: AppColor.red,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
