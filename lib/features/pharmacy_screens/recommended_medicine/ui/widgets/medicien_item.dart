import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/pharmacy_screens/recommended_medicine/data/model/pharmacy_medicien_response.dart';

import '../../../../../core/helper/value_manager.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_colors.dart';

class MedicineItem extends StatelessWidget {
  const MedicineItem({super.key, required this.medicine});
  final MedicinData medicine;
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
            context.pushNamed(Routes.pharmacyDetailsScreen,
                arguments: medicine);
          },
          child: Column(
            children: [
              medicine.image == null
                  ? Image.asset(
                      AppAsset.comatrixImage,
                      height: 100.h,
                      width: 100.w,
                    )
                  : CachedNetworkImage(
                      imageUrl: medicine.image!, //ToDo: add static url
                      fit: BoxFit.cover,
                      progressIndicatorBuilder: (context, url,
                              downloadProgress) =>
                          Shimmer.fromColors(
                              baseColor: AppColor.lightGray,
                              highlightColor: AppColor.white,
                              child: Container(
                                width: 100.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.r)),
                                ),
                              )),
                      imageBuilder: (context, imageProvider) => Container(
                        width: 100.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.all(Radius.circular(12.r)),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      fadeInDuration: const Duration(milliseconds: 250),
                      errorWidget: (context, url, error) => Container(
                        margin: EdgeInsets.only(right: 16.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12.r)),
                        ),
                        child: Image.asset(
                          AppAsset.comatrixImage,
                          fit: BoxFit.cover,
                        ),
                      ),
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
