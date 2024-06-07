import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';

import '../../../core/di/dependancy_injection.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/build_custom_app_bar.dart';
import '../logic/pharmacy_search_cubit/pharmacy_cubit.dart';
import 'widgets/pharmacy_body.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PharmacyCubit(getIt(),getIt()),
      child: Scaffold(
        appBar: buildCustomAppBar(
            backarrow: false,
            text1: AppString.welcome.tr(context),
            style1: AppStyle.font16WhiteSemiBold,
            text2: 'Mostafa',
            style2: AppStyle.f14MAinBlueW700,
            actions: []),
        body: const PharmacyBody(),
      ),
    );
  }
}
