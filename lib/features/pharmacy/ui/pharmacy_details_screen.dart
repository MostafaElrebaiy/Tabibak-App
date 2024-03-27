import 'package:flutter/material.dart';
<<<<<<< HEAD

class pharmacyDetailsScreen extends StatelessWidget {
  const pharmacyDetailsScreen({super.key});
=======
import 'package:tabibk/core/helper/app_localization.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/build_custom_app_bar.dart';
import 'widgets/pharmacy_details_body.dart';

class PharmacyDetailsScreen extends StatelessWidget {
  const PharmacyDetailsScreen({super.key});
>>>>>>> 9393be7b508487fcd27c2a321fd2d207285452a5

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: pharmacyDetailsBody(),
    );
  }
}
=======
      appBar: buildCustomAppBar(
          backarrow: true,
          text1: "productDetails".tr(context),
          style1: AppStyle.f20WhiteW600,
          actions: []),
      body: const PharmacyDetailsBody(),
    );
  }
}
>>>>>>> 9393be7b508487fcd27c2a321fd2d207285452a5
