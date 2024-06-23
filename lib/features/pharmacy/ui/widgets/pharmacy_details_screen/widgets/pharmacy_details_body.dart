import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/features/pharmacy/data/model/pharmacy_medicine/pharmacy_medicien_response.dart';
import '../../../../../../core/theme/styles.dart';

class PharmacyDetailsBody extends StatelessWidget {
  const PharmacyDetailsBody({super.key, required this.medicineData});
  final MedicinData medicineData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(top: 20.h, bottom: 20.h, left: 8.w, right: 8.w),
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image:medicineData.image == null
                          ? const AssetImage(
                              AppAsset.comatrixImage,
                            )
                          : NetworkImage(
                              medicineData.image!,
                            ) as ImageProvider<Object>,
                      fit: BoxFit.contain,
                    ),
                  ),
                )),
            verticalSpace(20.h),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.p12.w, vertical: AppPadding.p10.h),
              child: Column(
                children: [
                  verticalSpace(10),
                  Row(
                    children: [
                      Text(
                         "Name:   ",
                        style: AppStyle.f20BlackW700.copyWith(
                          color: AppColor.primaryBlue,

                        ),
                      ),
                      // const Spacer(),
                      Text(
                        medicineData.name ?? "",
                        style: AppStyle.f20BlackW700.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                         "Details:   ",
                        style: AppStyle.f20BlackW700.copyWith(
                          color: AppColor.primaryBlue,
                      
                        ),
                      ),
                      Flexible(
                        child: Text(
                          medicineData.details ?? "",
                          style: AppStyle.f20BlackW700.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                   verticalSpace(10),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                           "Price:   ",
                          style: AppStyle.f20BlackW700.copyWith(
                            color: AppColor.primaryBlue,
                        
                          ),
                        ),
                      ),
                      Text(
                        medicineData.price.toString(),
                        style: AppStyle.f20BlackW700.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
