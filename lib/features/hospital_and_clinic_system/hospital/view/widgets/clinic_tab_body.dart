import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/custom_list_tile_widget.dart';

class ClinicTabBody extends StatelessWidget {
  const ClinicTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (_, __) => CustomListTileWidget(
        distance: "4.5K",
        isHospital: false,
        title: "abdallhMostafa".tr(context),
        image: AppAsset.doctorImage,
        onTap: () {
          context.pushNamed(Routes.clinicInfoView);
        },
      ),
    );
  }
}
