import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/styles.dart';

PreferredSizeWidget buildCustomAppBar({required String text,List<Widget>? actions}) {
  return AppBar(
    // iconTheme: const IconThemeData(
    //   color: AppColor.white,
    // ),
    // backgroundColor: AppColor.appbar,
    title: Text(
     text,
      style: AppStyle.f20WhiteW600,
    ),
    actions: actions,
    
  );
}
