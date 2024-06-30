import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/features/pharmacy_screens/recommended_medicine/data/model/pharmacy_medicien_response.dart';
import 'package:tabibk/features/pharmacy_screens/best_deals_medicine/logic/pharmacy_best_deal_medicine_cubit.dart';
import 'package:tabibk/features/pharmacy_screens/best_deals_medicine/logic/pharmacy_best_deal_medicine_state.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/ui/widgets/medicien_item.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/ui/widgets/titles_of_section.dart';

class BestDealsSection extends StatelessWidget {
  const BestDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitlesOfSection(
          title: AppString.bestDeals.tr(context),
          subTitle: AppString.neverSeeThis.tr(context),
        ),
        BlocBuilder<PharmacyBestDealMedicineCubit,
            PharmacyBestDealMedicineState>(
          builder: (context, state) {
            return state.when(
              loading: () => const CircularProgressIndicator(),
              success: (value) {
                PharmacyMedicineResponse medicine =
                    value as PharmacyMedicineResponse;
                return Expanded(
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => MedicineItem(
                            medicine: medicine.data![index],
                          ),
                      separatorBuilder: (context, index) => horizontalSpace(5),
                      itemCount: medicine.data!.length),
                );
              },
              error: (value) => const Text("Error In Best Deals Medicine"),
            );
          },
        ),
      ],
    );
  }
}
