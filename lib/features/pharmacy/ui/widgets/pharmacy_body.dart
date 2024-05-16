import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/pharmacy/logic/cubit/pharmacy_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/cubit/pharmacy_state.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/titles_of_section.dart';
import '../../../../core/helper/app_assets.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/build_search_scetion.dart';
import 'categories_scetion.dart';
import 'recommendedsection.dart';

class PharmacyBody extends StatelessWidget {
  const PharmacyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 16.w, vertical: AppConstant.appVerticalPadding.h),
        child: Column(children: [
          BlocBuilder<PharmacyCubit, PharmacyState>(
            builder: (context, state) {
              return BuildSearchScetion(
                searchController:
                    context.read<PharmacyCubit>().searchController,
                validator: (s) {},
                onFieldSubmitted: (medicineName) {
                  context.read<PharmacyCubit>().searchForMedicien(
                        lat: 2222333,
                        lng: 3824734,
                      );
                },
              );
            },
          ),
          verticalSpace(15),
          TitlesOfSection(
            title: AppString.categories.tr(context),
            subTitle: '',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              CategoriesScetion(
                image: AppAsset.painkillersImage,
                categoryName: AppString.painkillers.tr(context),
              ),
              horizontalSpace(15),
              CategoriesScetion(
                image: AppAsset.stomochImage,
                categoryName: AppString.diabetes.tr(context),
              ),
              horizontalSpace(15),
              CategoriesScetion(
                image: AppAsset.diabetesImage,
                categoryName: AppString.stomoch.tr(context),
              ),
              horizontalSpace(15),
              CategoriesScetion(
                image: AppAsset.heartattackImage,
                categoryName: AppString.heartattack.tr(context),
              ),
            ]),
          ),
          verticalSpace(20),
          TitlesOfSection(
            title: AppString.recommended.tr(context),
            subTitle: AppString.neverSeeThis.tr(context),
          ),
          verticalSpace(10),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  const RecommendedSection(),
                  horizontalSpace(5),
                  const RecommendedSection(),
                  horizontalSpace(5),
                  const RecommendedSection(),
                  horizontalSpace(5),
                  const RecommendedSection(),
                  horizontalSpace(5),
                  const RecommendedSection(),
                  horizontalSpace(5),
                  const RecommendedSection(),
                ],
              ),
            ),
          ),

          //Best Deals
          verticalSpace(20),
          TitlesOfSection(
            title: AppString.bestDeals.tr(context),
            subTitle: AppString.neverSeeThis.tr(context),
          ),
          verticalSpace(10),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const RecommendedSection(),
                horizontalSpace(5),
                const RecommendedSection(),
                horizontalSpace(5),
                const RecommendedSection(),
                horizontalSpace(5),
                const RecommendedSection(),
                horizontalSpace(5),
                const RecommendedSection(),
                horizontalSpace(5),
                const RecommendedSection(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
