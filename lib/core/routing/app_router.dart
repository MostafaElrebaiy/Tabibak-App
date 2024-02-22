import 'package:flutter/material.dart';
import 'package:tabibk/core/routing/custom_page_route.dart';
import 'package:tabibk/core/routing/routes.dart';

import 'package:tabibk/features/check_out/presentation/check_out_view.dart';
import 'package:tabibk/features/check_out/presentation/widgets/add_shipping_screen.dart';
import 'package:tabibk/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/on_boarding_last_screen.dart';
import 'package:tabibk/features/product/presentation/product_view.dart';
import 'package:tabibk/features/login/ui/login_screen.dart';
import 'package:tabibk/features/signup/ui/signup_screen.dart';

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
        return CustomPageRoute(child: const OnBoardingLastScreen());


      case Routes.checkOutView:
        return CustomPageRoute(child: const CheckOutView());
      case Routes.productView:
        return CustomPageRoute(child: const ProductView());

      case Routes.addShippingAddressScreen:
        return CustomPageRoute(child: const AddShippingAddressScreen());
  case Routes.signUpScreen:
        return CustomPageRoute(child:  SignUpScreen()); 
        case Routes.loginScreen:
        return CustomPageRoute(child: const LoginScreen());

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
