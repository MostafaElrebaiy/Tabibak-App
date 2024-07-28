import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/simple_bloc_observer.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'core/di/dependancy_injection.dart';
import 'core/networking/shared_preferences.dart';
import 'core/routing/app_router.dart';
import 'tabibk_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  //fix hide text
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = SimpleBlocObserver();
  await CacheHelper.cacheInitializations();
  String token = CacheHelper.getCacheData(key: AppConstant.token);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(Phoenix(
    child: TabibkApp(
      token: token,
      appRouter: AppRouter(),
    ),
  ));
}
