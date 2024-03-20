import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/custom_expansion_tile.dart';
import 'package:tabibk/features/product/view/widgets/build_divider_widget.dart';

class DoctorsSection extends StatelessWidget {
  const DoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: 'Doctors',
      svgImage: AppAsset.timeIcon,
      children: [
        const BuildDivider(),
        ListTile(
          leading: Image.asset(AppAsset.doctorImage),
          title: Text(
            "Dr.${AppString.drName}",
            style: AppStyle.f16BlackW700Mulish
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const BuildDivider(),
        ListTile(
          leading: Image.asset(AppAsset.doctorImage),
          title: Text(
            "Dr.${AppString.drName}",
            style: AppStyle.f16BlackW700Mulish
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const BuildDivider(),
        ListTile(
          leading: Image.asset(AppAsset.doctorImage),
          title: Text(
            "Dr.${AppString.drName}",
            style: AppStyle.f16BlackW700Mulish
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
