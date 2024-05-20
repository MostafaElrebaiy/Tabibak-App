import 'package:flutter/material.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/app_constant.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.mainBlue,
    scaffoldBackgroundColor: AppColor.white,
    // fontFamily:  Localizations.maybeLocaleOf(context)?.languageCode== 'ar'? "Cairo":primaryFontFamily,
    fontFamily: AppConstant.arabicFontFamily,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.appbar,
      elevation: 10,
      iconTheme: IconThemeData(color: AppColor.white),
    ),
  );
}
