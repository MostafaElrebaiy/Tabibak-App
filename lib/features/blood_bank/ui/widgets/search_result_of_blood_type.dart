import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/features/blood_bank/data/model/blood_bank_response.dart';
import 'package:tabibk/features/blood_bank/logic/cubit/blood_bank_cubit.dart';
import 'package:tabibk/features/blood_bank/logic/cubit/blood_bank_state.dart';

import '../../../../core/helper/app_assets.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/build_custom_app_bar.dart';
import '../../../../core/widgets/custom_list_tile_widget.dart';

class SearchResultOfBloodType extends StatelessWidget {
  const SearchResultOfBloodType({super.key, required this.bloodBankResponse});
  final BloodBankResponse bloodBankResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
        backarrow: true,
        toolbarHeight: 70,
        text1: "bloodBankCenters".tr(context),
        style1: AppStyle.f20WhiteW600,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: ListView.builder(
          itemCount: bloodBankResponse.data?.length ?? 0,
          itemBuilder: (context, index) => BlocProvider(
            create: (context) => BloodBankCubit(getIt()),
            child: BlocBuilder<BloodBankCubit, BloodBankState>(
              builder: (context, state) {
                return CustomListTileWidget(
                  distance:
                      bloodBankResponse.data?[index].distance.toString() ?? '',
                  imageWidget: Image.asset(AppAsset.hospitalImage),
                  title: bloodBankResponse.data?[index].name.toString() ?? '',
                  onTap: () {
                    context.pushNamed(
                      Routes.bloodBankProfile,
                      arguments: bloodBankResponse.data?[index],
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
