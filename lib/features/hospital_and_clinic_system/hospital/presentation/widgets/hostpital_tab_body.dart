import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/presentation/widgets/custom_list_tile_widget.dart';

class HostpitalTabBody extends StatelessWidget {
  const HostpitalTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (_, __) => CustomListTileWidget(
        distance: 2.5,
        image: AppAsset.hospitalImage,
        title: AppString.elAndlosia,
        onTap: () {
          context.pushNamed(Routes.hospitalInfoView);
        },
      ),
    );
  }
}
