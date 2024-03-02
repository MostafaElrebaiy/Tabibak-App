import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/constant.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class TabibkApp extends StatelessWidget {
  final AppRouter appRouter;
  const TabibkApp({super.key, required this.appRouter});

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
        theme: ThemeData(
          primaryColor: AppColor.mainBlue,
          scaffoldBackgroundColor: AppColor.white,
          fontFamily: primaryFontFamily,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColor.appbar,
            elevation: 10,
            iconTheme: IconThemeData(color: AppColor.white),
          ),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.hospitalView,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
