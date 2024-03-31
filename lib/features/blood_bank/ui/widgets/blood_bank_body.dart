import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'find_a_donar_button.dart';
import 'top_blood_bank_body.dart';

class BloodBankBody extends StatelessWidget {
  const BloodBankBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopSectionBloodBankBody(),
        verticalSpace(150.h),
        const FindDonarButton(),
      ],
    );
  }
}
