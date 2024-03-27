import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/titles_of_section.dart';
import '../../../../core/helper/app_assets.dart';
import '../../../../core/helper/spacing.dart';
import '../../../hospital_and_clinic_system/hospital/view/widgets/build_search_scetion.dart';
import 'categories_scetion.dart';
import 'recommendedsection.dart';

class PharmacyBody extends StatelessWidget {
  const PharmacyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const BuildSearchScetion(),
          verticalSpace(15.h),
          TitlesOfSection(
            title: 'Categories',
            subTitle: '',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              CategoriesScetion(
                image: AppAsset.painkillersImage,
                categoryName: 'Painkillers',
              ),
              horizontalSpace(15.w),
              CategoriesScetion(
                image: AppAsset.stomochImage,
                categoryName: 'Stomoch',
              ),
              horizontalSpace(15.w),
              CategoriesScetion(
                image: AppAsset.diabetesImage,
                categoryName: 'Diabetes',
              ),
              horizontalSpace(15.w),
              CategoriesScetion(
                image: AppAsset.heartattackImage,
                categoryName: 'heartattack',
              ),
            ]),
          ),
          verticalSpace(20.h),
          TitlesOfSection(
            title: 'Recommended',
            subTitle: "You've never seen it before!",
          ),
          verticalSpace(10.h),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  const RecommendedSection(),
                  horizontalSpace(5.w),
                  const RecommendedSection(),
                  horizontalSpace(5.w),
                  const RecommendedSection(),
                  horizontalSpace(5.w),
                  const RecommendedSection(),
                  horizontalSpace(5.w),
                  const RecommendedSection(),
                  horizontalSpace(5.w),
                  const RecommendedSection(),
                ],
              ),
            ),
          ),

          //Best Deals
          verticalSpace(20.h),
          TitlesOfSection(
            title: 'Best Deals       ',
            subTitle: "You've never seen it before!",
          ),
          verticalSpace(10.h),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const RecommendedSection(),
                horizontalSpace(5.w),
                const RecommendedSection(),
                horizontalSpace(5.w),
                const RecommendedSection(),
                horizontalSpace(5.w),
                const RecommendedSection(),
                horizontalSpace(5.w),
                const RecommendedSection(),
                horizontalSpace(5.w),
                const RecommendedSection(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
