import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/widgets/build_custom_app_bar.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/clinic/clinic_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/department/department_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/hospital/hospital_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/widgets/hosptial_body.dart';

import '../../../../core/theme/styles.dart';

class HospitalScreenView extends StatelessWidget {
  const HospitalScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => DepartmentCubit(getIt())..getDepartment()),
        BlocProvider(create: (context) => HospitalCubit(getIt())),
        BlocProvider(create: (context) => ClinicCubit(getIt())),
      ],
      child: Scaffold(
        appBar: buildCustomAppBar(
          backarrow: false,
          text1: "tabibak".tr(context),
          style1: AppStyle.f20WhiteW600,
        ),
        body: const HospitalBody(),
      ),
    );
  }
}
