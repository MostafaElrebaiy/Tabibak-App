import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/presentation/widgets/build_hospital_and_clinics_tab.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/presentation/widgets/build_search_scetion.dart';

class HonspitalBody extends StatelessWidget {
  const HonspitalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BuildSearchScetion(),
        verticalSpace(20),
        const Expanded(child: BuildHospitalAndClinicsTab()),
      ],
    );
  }
}
