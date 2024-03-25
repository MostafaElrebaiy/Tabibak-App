import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/value_manager.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

class LanguageListTile extends StatelessWidget {
  const LanguageListTile(
      {super.key,
      required this.isSelected,
      required this.title,
      required this.onTap});
  final bool isSelected;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: BorderDirectional(
            bottom: BorderSide(
              color: AppColor.gray.withOpacity(0.2),
              width: 4,
            ),
          )),
      child: ListTile(
        onTap: onTap,
        splashColor: AppColor.primaryBlue.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        selectedTileColor: AppColor.appbar,
        title: Text(
          title,
          style:
              AppStyle.f16BlackW700Mulish.copyWith(fontWeight: FontWeight.w600),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: AppPadding.p10.h,
          horizontal: AppPadding.p20.w,
        ),
        trailing: Container(
            padding: const EdgeInsets.all(AppPadding.p4),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColor.primaryBlue
                  : AppColor.gray.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.check_rounded,
              color: AppColor.white,
              size: 20.w,
            )),
      ),
    );
  }
}
