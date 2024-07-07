import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/utilities/error_text_widget.dart';
import 'package:tabibk/features/pharmacy_screens/recommended_medicine/data/model/pharmacy_medicien_response.dart';
import 'package:tabibk/features/pharmacy_screens/recommended_medicine/logic/pharmacy_recommended_medicine_cubit.dart';
import 'package:tabibk/features/pharmacy_screens/recommended_medicine/logic/pharmacy_recommended_medicine_state.dart';
import 'package:tabibk/features/pharmacy_screens/recommended_medicine/ui/widgets/medicien_item.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/ui/widgets/titles_of_section.dart';
import 'package:tabibk/features/pharmacy_screens/recommended_medicine/ui/widgets/medicien_item_shimmer_loading.dart';

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
              loading: () => const MedicienItemShimmerLoading(),
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
              error: (errorMessage) =>
                  ErrorTextWidget(errorMessage: errorMessage),
            );
          },
        ),
      ],
    );
  }
}
