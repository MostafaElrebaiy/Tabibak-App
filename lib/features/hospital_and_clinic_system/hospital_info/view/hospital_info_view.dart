import 'package:flutter/material.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_and_clinic_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/hospital_info_body.dart';

class HospitalInfoView extends StatelessWidget {
  const HospitalInfoView({super.key, required this.hospitalAndClinicData});
  final HospitalAndClinicData hospitalAndClinicData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HospitalAndClinicProfile(
          hospitalAndClinicData: hospitalAndClinicData),
    );
  }
}
