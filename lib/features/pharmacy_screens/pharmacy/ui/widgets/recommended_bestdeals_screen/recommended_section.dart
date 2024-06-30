import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/data/model/pharmacy_medicine/pharmacy_medicien_response.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/logic/pharmacy_recommended_medicine/pharmacy_recommended_medicine_cubit.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/logic/pharmacy_recommended_medicine/pharmacy_recommended_medicine_state.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/ui/widgets/medicien_item.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/ui/widgets/titles_of_section.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitlesOfSection(
          title: AppString.recommended.tr(context),
          subTitle: AppString.neverSeeThis.tr(context),
        ),
        BlocBuilder<PharmacyRecommendedMedicineCubit,
            PharmacyRecommendedMedicineState>(
          builder: (context, state) {
            return state.when(
              loading: () => const CircularProgressIndicator(),
              success: (data) {
                PharmacyMedicineResponse medicine =
                    data as PharmacyMedicineResponse;
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
              error: (error) =>  Text(error),
            );
          },
        ),
      ],
    );
  }
}
