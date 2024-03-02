import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/widgets/cutom_list_tile.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/presentation/widgets/another_department_section.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/presentation/widgets/image_name_distance_section.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/presentation/widgets/doctors_section.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/presentation/widgets/phone_number_section.dart';

class HospitalInfoBody extends StatelessWidget {
  const HospitalInfoBody({super.key});

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
                  distance: 2.4,
                  isDoctor: false,
                  pngImage: AppAsset.hospitalImage,
                  title: AppString.cardiothoracicDepartment,
                  name: AppString.elAndlosia,
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
                    const PhoneNumberSection(),
                    verticalSpace(20),
                    const DoctorsSection(),
                    verticalSpace(20),
                    const CustomListTile(
                        title: AppString.location,
                        image: AppAsset.location,
                        isSvgImage: true),
                    verticalSpace(20),
                    const AnotherDepartmentSection(),
                    verticalSpace(20),
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
