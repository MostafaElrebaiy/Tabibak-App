import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';
import 'package:tabibk/core/widgets/top_back_ground_two.dart';
import 'package:tabibk/features/profile/presentation/widgets/language_list_tile.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const TopBackgroundTwo(thereTitle: true, title: AppString.language),
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: Column(
              children: [
                LanguageListTile(
                    isSelected: true, title: AppString.english, onTap: () {}),
                verticalSpace(15),
                LanguageListTile(
                    isSelected: false, title: AppString.arabic, onTap: () {}),
              ],
            ))
      ],
    ));
  }
}
