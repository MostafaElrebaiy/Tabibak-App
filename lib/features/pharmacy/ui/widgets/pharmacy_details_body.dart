import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/recommendedsection.dart';
import '../../../../core/theme/styles.dart';
import 'titles_of_section.dart';

class PharmacyDetailsBody extends StatelessWidget {
  const PharmacyDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(top: 20.h, bottom: 20.h, left: 8.w, right: 8.w),
        child: Column(
          children: [
            SizedBox(
              height: 320.h,
              width: double.infinity,
              child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage(AppAsset.comatrixImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            verticalSpace(20.h),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.p12.w, vertical: AppPadding.p10.h),
              child: Column(
                children: [
                   Row(
                    children: [Text(" ⭐ 4.3(80 ${AppString.reviews.tr(context)})")],
                  ),
                  verticalSpace(10),
                  Row(
                    children: [
                      Text(
                        "Mebo Scar Cream",
                        style: AppStyle.font16blackRegular,
                      ),
                      const Spacer(),
                      Text(
                        "424.25 ${AppString.egp.tr(context)}",
                        style: AppStyle.font16MainBLueBold,
                      ),
                    ],
                  ),
                  verticalSpace(10),
                  Text(
                    "Mebo Scar CreamMebo Scar CreamMebo Scar Cream",
                    style: AppStyle.font12BlackRegular,
                  ),
                  ListTile(
                    style: ListTileStyle.list,
                    title: Text(
                      AppString.productdetails.tr(context),
                      style: AppStyle.font16blackRegular,
                    ),
                    trailing: const Icon(Icons.add),
                    onTap: () {},
                  ),
                  verticalSpace(10),
                  TitlesOfSection(
                    title: AppString.relatedProduct.tr(context),
                    subTitle: '',
                  ),
                  verticalSpace(10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          const RecommendedItem(),
                          horizontalSpace(5),
                          const RecommendedItem(),
                          horizontalSpace(5),
                          const RecommendedItem(),
                          horizontalSpace(5),
                          const RecommendedItem(),
                          horizontalSpace(5),
                          const RecommendedItem(),
                          horizontalSpace(5),
                          const RecommendedItem(),
                        ],
                      ),
                    ),
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
