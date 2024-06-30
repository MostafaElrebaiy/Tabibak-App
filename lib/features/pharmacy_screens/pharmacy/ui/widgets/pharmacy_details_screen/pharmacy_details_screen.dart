import 'package:flutter/material.dart';
import 'package:tabibk/features/pharmacy_screens/recommended_medicine/data/model/pharmacy_medicien_response.dart';
import '../../../../../../core/theme/styles.dart';
import '../../../../../../core/widgets/build_custom_app_bar.dart';
import 'widgets/pharmacy_details_body.dart';

class PharmacyDetailsScreen extends StatelessWidget {
  const PharmacyDetailsScreen({super.key, required this.medicineData});
  final MedicinData medicineData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
          backarrow: true,
          text1: medicineData.name ?? "Details",
          style1: AppStyle.f20WhiteW600,
          actions: []),
      body: PharmacyDetailsBody(medicineData: medicineData),
    );
  }
}
