import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/custom_expansion_tile.dart';
import 'package:tabibk/features/product/view/widgets/build_divider_widget.dart';

class PhoneNumberSection extends StatelessWidget {
  const PhoneNumberSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      title: "phoneNumbers".tr(context),
      svgImage: AppAsset.phoneNumber,
      children: [
        const BuildDivider(),
        ListTile(
          onTap: () {},
          leading: SvgPicture.asset(AppAsset.numberOne),
          title: Text(
            "num1",
            style: AppStyle.f16BlackW700Mulish
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const BuildDivider(),
        ListTile(
          onTap: () {},
          leading: SvgPicture.asset(AppAsset.numberTwo),
          title: Text(
            "num1",
            style: AppStyle.f16BlackW700Mulish
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
