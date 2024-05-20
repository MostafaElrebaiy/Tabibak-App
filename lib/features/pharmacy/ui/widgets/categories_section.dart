import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/categories_scetion.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/titles_of_section.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});
  final List<Map<String, String>> categories = const [
    {"image": AppAsset.painkillersImage, "title": AppString.painkillers},
    {"image": AppAsset.stomochImage, "title": AppString.diabetes},
    {"image": AppAsset.diabetesImage, "title": AppString.stomoch},
    {"image": AppAsset.heartattackImage, "title": AppString.heartattack},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitlesOfSection(
          title: AppString.categories.tr(context),
          subTitle: '',
        ),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            // shrinkWrap: true,
            separatorBuilder: (context, index) => horizontalSpace(10),
            itemBuilder: (context, index) {
              return CategoriesScetion(
                image: categories[index]['image']!,
                categoryName: categories[index]['title']!.tr(context),
              );
            },
          ),
        ),
      ],
    );
  }
}
