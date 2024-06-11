import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/features/blood_bank/data/model/blood_bank_response.dart';

import '../../../../core/helper/app_assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/build_custom_app_bar.dart';
import '../../../hospital_and_clinic_system/hospital/view/widgets/custom_list_tile_widget.dart';

class SearchResultOfBloodType extends StatelessWidget {
  const SearchResultOfBloodType({super.key, required this.bloodBankResponse});
  final BloodBankResponse bloodBankResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
        backarrow: true,
        toolbarHeight: 70,
        text1: "Blood Bank Result",
        style1: AppStyle.f20WhiteW600,
      ),
      body: ListView.builder(
        itemCount: bloodBankResponse.data?.bloodCenters?.length ?? 0,
        itemBuilder: (_, index) => CustomListTileWidget(
          distance: bloodBankResponse.data?.bloodCenters?[index].distance
                  .toString() ??
              '',
          image: AppAsset.hospitalImage,
          title: bloodBankResponse.data?.bloodCenters?[index].name.toString() ??
              '',
          onTap: () {
            context.pushNamed(Routes.hospitalInfoView);
          },
        ),
      ),
    );
  }
}
