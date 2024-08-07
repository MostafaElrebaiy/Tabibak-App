import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/core/widgets/cutom_list_tile.dart';
import 'package:tabibk/features/profile_screens/profile/logic/user_details/user_details_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

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
                onTap: () async {
                  final result = await context.pushNamed(Routes.editProfileView,
                      arguments: BlocProvider.of<UserDetailsCubit>(context)
                          .userDetailsResponse);
                  if (result == true) {
                    BlocProvider.of<UserDetailsCubit>(context).getUserDetails();
                  }
                },
              ),
              verticalSpace(25),
              CustomListTile(
                  title: AppLocalization.of(context)!.translate("language"),
                  image: AppAsset.lang,
                  isLangIcon: true,
                  thereTrailing: true,
                  isSvgImage: true,
                  onTap: () => context.pushNamed(Routes.languageProfileView)),
              verticalSpace(25),
              CustomListTile(
                  title: AppLocalization.of(context)!.translate("contactUs"),
                  image: AppAsset.contactUsIcon,
                  thereTrailing: true,
                  isSvgImage: true,
                  onTap: () {
                    _urlLauncher(Uri(
                      scheme: 'mailto',
                      path: AppConstant.mailTo,
                      
                      query: encondeQueryParameters(<String, String>{
                        'subject': "Please write your subject here",
                      }),
                    ));
                  }),
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
      ].animate().fade(duration: AppConstant.animationDuration.milliseconds),
    );
  }

  String? encondeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}

Future<void> _urlLauncher(Uri emailLaunchUri) async {
  try {
    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  } catch (_) {}
}
