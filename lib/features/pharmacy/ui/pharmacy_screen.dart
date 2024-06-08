import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_best_deal_medicine/pharmacy_best_deal_medicine_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_recommended_medicine/pharmacy_recommended_medicine_cubit.dart';

import '../../../core/di/dependancy_injection.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/build_custom_app_bar.dart';
import '../logic/pharmacy_search_cubit/pharmacy_cubit.dart';
import 'widgets/pharmacy_body.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PharmacyCubit(getIt()),
        ),
        BlocProvider(
          create: (context) => PharmacyBestDealMedicineCubit(getIt()),
        ),
        BlocProvider(
          create: (context) => PharmacyRecommendedMedicineCubit(getIt()),
        ),
      ],
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
