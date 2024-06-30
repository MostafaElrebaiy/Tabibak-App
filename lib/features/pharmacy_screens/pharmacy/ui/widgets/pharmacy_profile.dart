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
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/details_section.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/widgets/image_name_distance_section.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/data/model/search_pharmacy/search_pharmacy_response.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/logic/pharmacy_search_cubit/pharmacy_cubit.dart';

class PharmacyProfile extends StatelessWidget {
  const PharmacyProfile({super.key, required this.pharmacy});
  final Pharmacies pharmacy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              const TopBackgroundTwo(),
              Positioned(
                  left: 0,
                  right: 0,
                  top: 50.h,
                  child: ImageNameAndDistanceSection(
                    isImage: false, 
                    distance: pharmacy.distance?.toStringAsFixed(5) ?? "",
                    pngImage: pharmacy.image ?? "",
                    title: "Pharmacy Profile",
                    name: pharmacy.name ?? "",
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
                        text: pharmacy.details ?? "",
                      
                     ),

                      verticalSpace(20),
                      BlocProvider(
                        create: (context) => PharmacyCubit(getIt()),
                        child: Builder(
                          builder: (context) {
                            return CustomListTile(
                              title: "location".tr(context),
                              image: AppAsset.location,
                              isSvgImage: true,
                              onTap: () {
                                context.read<PharmacyCubit>().goToMap(
                                    lat: pharmacy.location?.x.toString(),
                                    lng: pharmacy.location?.y.toString());
                              },
                            );
                          }
                        ),
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
