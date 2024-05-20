import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/recommendedsection.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/titles_of_section.dart';

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
        Expanded(
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => const RecommendedItem(),
              separatorBuilder: (context, index) => horizontalSpace(5),
              itemCount: 5),
        ),
      ],
    );
  }
}
