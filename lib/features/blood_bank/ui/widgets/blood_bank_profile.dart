import 'package:flutter/material.dart';
import 'package:tabibk/features/blood_bank/data/model/blood_bank_response.dart';
import 'package:tabibk/features/blood_bank/ui/widgets/blood_bank_profile_body.dart';

class BloodBankProfile extends StatelessWidget {
  const BloodBankProfile({super.key, required this.bloodBankData});
  final BloodCenters bloodBankData;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BloodBankProfileBody(bloodBankData: bloodBankData,)  ,
    );
  }
}