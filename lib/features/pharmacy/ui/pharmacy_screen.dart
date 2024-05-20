import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/features/pharmacy/ui/widgets/build_medicien_search.dart';

import '../../../core/theme/styles.dart';
import '../../../core/widgets/build_custom_app_bar.dart';
import 'widgets/pharmacy_body.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
          backarrow: false,
          text1: AppString.welcome.tr(context),
          style1: AppStyle.font16WhiteSemiBold,
          text2: 'Mostafa',
          style2: AppStyle.f14MAinBlueW700,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(
                    context: context,
                    delegate: MedicienSearch(),
                    useRootNavigator: false);
              },
            ),
          ]),
      body: const PharmacyBody(),
    );
  }
}
