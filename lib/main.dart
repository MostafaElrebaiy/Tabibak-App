import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/routing/app_router.dart';
import 'tabibk_app.dart';


void main() {
    WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(TabibkApp(
    appRouter: AppRouter(),
  ));
}
