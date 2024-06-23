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
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_and_clinic_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/logic/hospital/hospital_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/details_section.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/image_name_distance_section.dart';

class HospitalAndClinicProfile extends StatelessWidget {
  const HospitalAndClinicProfile(
      {super.key, required this.hospitalAndClinicData});
  final HospitalAndClinicData hospitalAndClinicData;

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
                    distance:
                        hospitalAndClinicData.distance?.toStringAsFixed(5) ??
                            "",
                    pngImage: hospitalAndClinicData.image ?? "",
                    title: "hospitalProfile".tr(context),
                    name: hospitalAndClinicData.name ?? "",
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
                        text: hospitalAndClinicData.details ?? "",
                      ),
                      verticalSpace(20),
                      BlocProvider(
                        create: (context) => HospitalCubit(getIt()),
                        child: Builder(builder: (context) {
                          return CustomListTile(
                            title: "location".tr(context),
                            image: AppAsset.location,
                            isSvgImage: true,
                            onTap: () {
                              context.read<HospitalCubit>().goToMap(
                                  lat: hospitalAndClinicData.location?.x
                                      .toString(),
                                  lng: hospitalAndClinicData.location?.y
                                      .toString());
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
