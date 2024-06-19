import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
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
                  title: AppLocalization.of(context)!.translate("editProfile"),
                  image: AppAsset.profileIcon,
                  thereTrailing: true,
                  isSvgImage: true,
                  onTap: () =>
                      context.pushReplacementNamed(Routes.editProfileView)),
              verticalSpace(25),
              CustomListTile(
                  title: AppLocalization.of(context)!.translate("language"),
                  image: AppAsset.emptyIcon,
                  thereTrailing: true,
                  isSvgImage: true,
                  onTap: () => context.pushNamed(Routes.languageProfileView)),
              verticalSpace(25),
              CustomListTile(
                  title: AppLocalization.of(context)!.translate("contactUs"),
                  image: AppAsset.contactUsIcon,
                  thereTrailing: true,
                  isSvgImage: true,
                  onTap: () {}),
              verticalSpace(25),
              CustomListTile(
                  title: AppLocalization.of(context)!.translate("logout"),
                  image: AppAsset.logoutIcon,
                  thereTrailing: true,
                  isSvgImage: true,
                  onTap: () {
                    CacheHelper.removeCacheData(key: "token");
                    context.pushReplacementNamed(Routes.loginScreen);
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
