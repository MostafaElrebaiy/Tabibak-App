import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/simple_bloc_observer.dart';

import 'core/di/dependancy_injection.dart';
import 'core/routing/app_router.dart';
import 'tabibk_app.dart';

void main() async {
  setupGetIt();
  //fix hide text
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(TabibkApp(
    appRouter: AppRouter(),
  ));
}
