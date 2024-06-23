import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/custom_expansion_tile.dart';
import 'package:tabibk/features/product/view/widgets/build_divider_widget.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key, required this.text});
final String text;
  
  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: 'Details',
      isThereSVG: false,
      children: [
        const BuildDivider(),
        Text(text,style: AppStyle.f16BlackW700Mulish,),
  
      
      ],
    );
  }
}
