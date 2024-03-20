import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/profile_screens/profile/view/widgets/image_name_email_section.dart';
import 'package:tabibk/profile_screens/profile/view/widgets/profile_view_list_items.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            const TopBackgroundTwo(thereTitle: true, title: AppString.profile),
            Positioned(
              left: 0,
              right: 0,
              top: 50.h,
              child: const ImageNameAndEmailSection(
                email: "abdallhelrabiey255@gmail.com",
                name: 'Abdallh Mostafa elRabiey',
                isFileImage: false,
                pngImage: AppAsset.doctorImage,
              ),
            )
          ],
        ),
        const Expanded(child: ProfileViewListItems()),
      ],
    );
  }
}
