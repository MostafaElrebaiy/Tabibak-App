import 'package:flutter/material.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/presentation/widgets/hospital_info_body.dart';

class HospitalInfoView extends StatelessWidget {
  const HospitalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HospitalInfoBody(),
    );
  }
}
