import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/di/dependancy_injection.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/widgets/cutom_list_tile.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/blood_bank/data/model/blood_bank_response.dart';
import 'package:tabibk/features/blood_bank/logic/cubit/blood_bank_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/details_section.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/image_name_distance_section.dart';

class BloodBankProfileBody extends StatelessWidget {
  const BloodBankProfileBody({super.key, required this.bloodBankCenter});
  final BloodBankCenter bloodBankCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              const TopBackgroundTwo(),
              Positioned(
                  left: 0,
                  right: 0,
                  top: 50.h,
                  child: ImageNameAndDistanceSection(
                    isImage: true,
                    distance:
                        bloodBankCenter.distance?.toStringAsFixed(2) ?? "",
                    pngImage: '',
                    title: "bloodBankProfile".tr(context),
                    name: bloodBankCenter.name ?? "",
                  )),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p10.w),
                  child: Column(
                    children: [
                      DetailsSection(
                        text: bloodBankCenter.address ?? "",
                      ),
                      verticalSpace(20),
                      BlocProvider(
                        create: (context) => BloodBankCubit(getIt()),
                        child: Builder(builder: (context) {
                          return CustomListTile(
                            title: "location".tr(context),
                            image: AppAsset.location,
                            isSvgImage: true,
                            onTap: () {
                              context.read<BloodBankCubit>().goToMap(
                                  lat: bloodBankCenter.location?.x.toString(),
                                  lng: bloodBankCenter.location?.y.toString());
                            },
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
