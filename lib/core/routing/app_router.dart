import 'package:flutter/material.dart';
import 'package:tabibk/core/routing/custom_page_route.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/on_boarding_last.dart';
import 'package:tabibk/features/splash/presentation/splash_view.dart';
import 'package:tabibk/features/splash/presentation/widgets/second_splash_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this
    // final argument = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingView:
        return CustomPageRoute(child: const OnBoardingView());
    
       case Routes.splashScreen:
        return CustomPageRoute(child: const SplashView());
        
      case Routes.secondSplashScreen:
        return CustomPageRoute(child: const SecondSplashScreen());

         case Routes.secondOnBoardingScreen:
        return CustomPageRoute(child: const OnBoardingLast());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
