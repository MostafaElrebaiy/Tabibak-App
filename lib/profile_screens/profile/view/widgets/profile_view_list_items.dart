import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/widgets/cutom_list_tile.dart';

class ProfileViewListItems extends StatelessWidget {
  const ProfileViewListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
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
                  onTap: () => context.pushNamed(Routes.editProfileView)),
              verticalSpace(25),
              CustomListTile(
                  title: AppString.language,
                  image: AppAsset.emptyIcon,
                  thereTrailing: true,
                  isSvgImage: true,
                  onTap: () => context.pushNamed(Routes.languageProfileView)),
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
    );
  }
}
