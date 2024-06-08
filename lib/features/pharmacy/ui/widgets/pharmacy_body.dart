import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_best_deal_medicine/pharmacy_best_deal_medicine_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_recommended_medicine/pharmacy_recommended_medicine_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_search_cubit/pharmacy_state.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/best_deals_section.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/categories_section.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/recommended_section.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/search_result.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/build_search_scetion.dart';

class PharmacyBody extends StatefulWidget {
   const PharmacyBody({super.key});

  @override
  State<PharmacyBody> createState() => _PharmacyBodyState();
}

class _PharmacyBodyState extends State<PharmacyBody> {

  @override
  void initState() {
    BlocProvider.of<PharmacyRecommendedMedicineCubit>(context).getRecommendedMedicine();
    BlocProvider.of<PharmacyBestDealMedicineCubit>(context).getBestDealsMedicine();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 16.w, vertical: AppConstant.appVerticalPadding.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocBuilder<PharmacyCubit, PharmacyState>(
                  builder: (context, state) {
                    PharmacyCubit pharmacyCubit =
                        context.read<PharmacyCubit>();
    
                    return BuildSearchScetion(
                      searchController: pharmacyCubit.searchController,
                      validator: (s) {},
                      onChanged: (medicineName) {
                        pharmacyCubit.searchForMedicien(
                         
                          medicineName: pharmacyCubit.searchController.text,
                        );
                      },
                      onFieldSubmitted: (medicineName) {
                        pharmacyCubit.searchForMedicien(
                         
                          medicineName: pharmacyCubit.searchController.text,
                        );
                      },
                      widget: SearchResult(
                        searchController: pharmacyCubit.searchController,
                        pharmacySearchResponse:
                            pharmacyCubit.pharmacySearchResponse,
                        state: state, locationService: pharmacyCubit.locationService,
                      ),
                      iconTap: () => pharmacyCubit.clearTextFiled(),
                      isSearching:
                          pharmacyCubit.searchController.text.isNotEmpty,
                    );
                  },
                ),
                verticalSpace(15),
                SizedBox(
                    height: height * 0.25, child: const CategoriesSection()),
                SizedBox(
                    height: height * 0.33, child: const RecommendedSection()),
                SizedBox(
                    height: height * 0.33, child: const BestDealsSection()),
              ],
            ),
          )
    
          // const PharmacyBlocListener()
        ]);
  }
}
