import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/build_hospital_and_clinics_tab.dart';

class HonspitalBody extends StatelessWidget {
  const HonspitalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const BuildSearchScetion(),
        verticalSpace(20),
        const Expanded(child: BuildHospitalAndClinicsTab()),
      ],
    );
  }
}
// This is comment for the Test GitHUb