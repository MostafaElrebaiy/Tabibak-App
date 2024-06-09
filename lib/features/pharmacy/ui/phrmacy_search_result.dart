import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/custom_list_tile_widget.dart';

import '../../../../core/helper/app_assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/build_custom_app_bar.dart';

class PharmacySearchResult extends StatelessWidget {
  const PharmacySearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
        backarrow: true,
        toolbarHeight: 70,
        text1: "Tabibak",
        style1: AppStyle.f20WhiteW600,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, __) => CustomListTileWidget(
          distance: "2.5K",
          image: AppAsset.hospitalImage,
          title: "elAndlosia",
          onTap: () {
            context.pushNamed(Routes.hospitalInfoView);
          },
        ),
      ),
    );
  }
}
