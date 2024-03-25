import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/profile_screens/profile/view/widgets/image_name_email_section.dart';
import 'package:tabibk/features/profile_screens/profile/view/widgets/profile_view_list_items.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key, required this.image});
  final File? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            TopBackgroundTwo(
                thereTitle: true,
                title: AppLocalization.of(context)!.translate("profile")),
            Positioned(
              left: 0,
              right: 0,
              top: 90.h,
              child: ImageNameAndEmailSection(
                email: "abdallhelrabiey255@gmail.com",
                name: AppLocalization.of(context)!.translate("abdallhMostafa"),
                isFileImage: true,
                // pngImage: AppAsset.doctorImage,
                fileImage: image,
              ),
            )
          ],
        ),
        const Expanded(child: ProfileViewListItems()),
      ],
    );
  }
}
