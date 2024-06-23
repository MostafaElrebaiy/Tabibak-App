import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/features/blood_bank/logic/cubit/blood_bank_cubit.dart';
import 'find_a_donar_button.dart';
import 'top_blood_bank_body.dart';

class BloodBankBody extends StatelessWidget {
  const BloodBankBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BloodBankCubit(getIt()),
      child: Column(
        children: [
          const TopSectionBloodBankBody(),
          verticalSpace(150.h),
          const FindDonarButton(),
        ],
      ),
    );
  }
}
