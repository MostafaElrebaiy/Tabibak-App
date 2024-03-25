import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/profile_screens/language_profile_view/view/widgets/language_list_tile.dart';
class LanguageProfileViewBody extends StatelessWidget {
  const LanguageProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         TopBackgroundTwo(thereTitle: true, title:AppLocalization.of(context)!.translate("language")),
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: Column(
              children: [
                LanguageListTile(
                    isSelected: true, title: AppLocalization.of(context)!.translate("english"), onTap: () {}),
                verticalSpace(15),
                LanguageListTile(
                    isSelected: false, title: AppLocalization.of(context)!.translate("arabic"), onTap: () {}),
              ],
            ))
      ],
    );
  }
}
