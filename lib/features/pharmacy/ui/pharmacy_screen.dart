import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/utilities/to_capitalize.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_best_deal_medicine/pharmacy_best_deal_medicine_cubit.dart';
import 'package:tabibk/features/pharmacy/logic/pharmacy_recommended_medicine/pharmacy_recommended_medicine_cubit.dart';
import 'package:tabibk/features/profile_screens/profile/logic/user_details/user_details_cubit.dart';
import 'package:tabibk/features/profile_screens/profile/logic/user_details/user_details_state.dart';

import '../../../core/di/dependancy_injection.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/build_custom_app_bar.dart';
import '../logic/medicine_search_cubit/pharmacy_search_cubit/medicine_cubit.dart';
import '../logic/pharmacy_search_cubit/pharmacy_cubit.dart';
import 'widgets/pharmacy_body.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MedicineCubit(getIt())),
        BlocProvider(
          create: (context) => PharmacyCubit(getIt()),
        ),
        BlocProvider(
          create: (context) => PharmacyBestDealMedicineCubit(getIt()),
        ),
        BlocProvider(
          create: (context) => PharmacyRecommendedMedicineCubit(getIt()),
        ),
        BlocProvider(
          create: (context) => UserDetailsCubit(getIt())..getUserDetails(),
        ),
      ],
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: BlocBuilder<UserDetailsCubit, UserDetailsState>(
            builder: (context, state) {
              return buildCustomAppBar(
                  backarrow: false,
                  text1: AppString.welcome.tr(context),
                  style1: AppStyle.font16WhiteSemiBold,
                  text2: state.when(
                      initial: () => "",
                      loading: () => "...",
                      success: (userDetails) =>
                          toCapitalize(userDetails.data?.name ?? 'Back'),
                      error: (error) => "Back"),
                  style2: AppStyle.f14primaryBlueW700.copyWith(
                    fontSize: 16.sp,
                  ),
                  actions: []);
            },
          ),
        ),
        body: const PharmacyBody(),
      ),
    );
  }
}

