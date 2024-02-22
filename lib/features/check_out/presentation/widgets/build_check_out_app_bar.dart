import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/styles.dart';

PreferredSizeWidget buildCheckOutAppBar({required String text}) {
  return AppBar(
    iconTheme: const IconThemeData(
      color: AppColor.white,
    ),
    backgroundColor: AppColor.appbar,
    title: Text(
     text,
      style: AppStyle.f20WhiteW600,
    ),
  );
}
