import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/widgets/cutom_list_tile.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/presentation/widgets/custom_expansion_tile.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/presentation/widgets/image_name_distance_section.dart';

class ClinicInfoBody extends StatelessWidget {
  const ClinicInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const TopBackgroundTwo(),
            Positioned(
              left: 0,
              right: 0,
              top: 50.h,
              child: const ImageNameAndDistanceSection(
                name: AppString.drName,
                distance: "4.5K",
                pngImage: AppAsset.doctorImage,
                isDoctor: true,
                title: AppString.cardiologyAndThoracology,
              ),
            ),
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
                    CustomExpansionTile(
                        title: AppString.phoneNumbers,
                        svgImage: AppAsset.phoneNumber,
                        children: [
                          ListTile(
                            onTap: () {},
                            leading: SvgPicture.asset(AppAsset.numberOne),
                            title: Text(
                              AppString.num1,
                              style: AppStyle.f16BlackW700Mulish
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                    verticalSpace(20),
                    const CustomListTile(
                        title: AppString.location,
                        image: AppAsset.location,
                        isSvgImage: true),
                    verticalSpace(20),
                    const CustomListTile(
                        title: 'From 10 Am to 10 Pm',
                        image: AppAsset.timeIcon,
                        isSvgImage: true),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
