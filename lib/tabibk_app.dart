import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/networking/shared_preferences.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/core/theming/app_theme.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

Locale? lang;

class TabibkApp extends StatelessWidget {
  final AppRouter appRouter;
  final String? token;
  const TabibkApp({super.key, required this.appRouter, this.token});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // systemNavigationBarColor: Colors.black,
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(375, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        locale: CacheHelper.getCacheData(key: AppConstant.lang) == "ar"
            ? const Locale("ar")
            : const Locale("en"),
        supportedLocales: const <Locale>[
          Locale('en'),
          Locale('ar'),
        ],
        localizationsDelegates: const <LocalizationsDelegate>[
          AppLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          for (Locale locale in supportedLocales) {
            if (deviceLocale != null &&
                deviceLocale.languageCode == locale.languageCode) {
              return deviceLocale;
            }
          }
          return supportedLocales.first;
        },
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: token != null && token != ""
            ? Routes.homeScreen
            : Routes.splashViewBody,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
