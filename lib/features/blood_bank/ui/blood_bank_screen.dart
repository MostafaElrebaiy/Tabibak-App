import 'package:flutter/material.dart';

import 'widgets/blood_bank_body.dart';

class BloodBankScreen extends StatelessWidget {
  const BloodBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BloodBankBody(),
    );
  }
}
