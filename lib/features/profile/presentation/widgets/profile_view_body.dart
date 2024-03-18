import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/widgets/cutom_list_tile.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/profile/presentation/widgets/edit_profile_screen.dart';
import 'package:tabibk/features/profile/presentation/widgets/image_name_email_section.dart';

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
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const ImageNameAndEmailSection(
                      email: "abdallhelrabiey255@gmail.com",
                      name: 'Abdallh Mostafa elRabiey',
                      pngImage: AppAsset.doctorImage,
                    ),
                    Positioned(
                      top: 100.h,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.mode_edit_rounded,
                            size: 20,
                            color: AppColor.primaryBlue,
                          ),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
        // EditProfileScreen()
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.p10.w,
                ),
                child: Column(
                  children: [
                    CustomListTile(
                        title: AppString.editProfile,
                        image: AppAsset.profileIcon,
                        thereTrailing: true,
                        isSvgImage: true,
                        onTap: () {}),
                    verticalSpace(25),
                    CustomListTile(
                        title: AppString.language,
                        image: AppAsset.emptyIcon,
                        thereTrailing: true,
                        isSvgImage: true,
                        onTap: () => context.pushNamed(Routes.languageScreen)),
                    verticalSpace(25),
                    CustomListTile(
                        title: AppString.contactUs,
                        image: AppAsset.contactUsIcon,
                        thereTrailing: true,
                        isSvgImage: true,
                        onTap: () {}),
                    verticalSpace(25),
                    CustomListTile(
                        title: AppString.logout,
                        image: AppAsset.logoutIcon,
                        thereTrailing: true,
                        isSvgImage: true,
                        onTap: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
