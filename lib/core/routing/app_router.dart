import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/routing/custom_page_route.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/features/auth/forget_password/ui/forget_password_screen.dart';
import 'package:tabibk/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:tabibk/features/auth/otp/ui/otp.dart';
import 'package:tabibk/features/auth/update_password/ui/successfully_update_pass.dart';
import 'package:tabibk/features/auth/update_password/ui/update_password.dart';
import 'package:tabibk/features/check_out/presentation/check_out_view.dart';
import 'package:tabibk/features/check_out/presentation/widgets/add_shipping_screen.dart';
import 'package:tabibk/features/home/logic/cubit/home_cubit.dart';
import 'package:tabibk/features/hospital_and_clinic_system/clinic_info/presentation/clinic_info_view.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/presentation/hospital_screen_view.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/presentation/hospital_info_view.dart';
import 'package:tabibk/features/home/ui/home_screen.dart';
import 'package:tabibk/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/on_boarding_last_screen.dart';
import 'package:tabibk/features/pharmacy/ui/pharmacy_details_screen.dart';
import 'package:tabibk/features/product/presentation/product_view.dart';
import 'package:tabibk/features/profile/presentation/profile_view.dart';
import 'package:tabibk/features/profile/presentation/widgets/language_screen.dart';
import 'package:tabibk/features/splash/presentation/widgets/second_splash_screen.dart';
import '../../features/auth/login/ui/login_screen.dart';
import '../../features/auth/signup/ui/signup_screen.dart';
import '../di/dependancy_injection.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this
    // final argument = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingView:
        return CustomPageRoute(child: const OnBoardingView());

      // case Routes.splashScreen:
      //   return CustomPageRoute(child: const SplashView());

      case Routes.secondSplashScreen:
        return CustomPageRoute(child: const SecondSplashScreen());

      case Routes.secondOnBoardingScreen:
        return CustomPageRoute(child: const OnBoardingLastScreen());

      case Routes.checkOutView:
        return CustomPageRoute(child: const CheckOutView());
      case Routes.hospitalView:
        return CustomPageRoute(child: const HospitalScreenView());
      case Routes.productView:
        return CustomPageRoute(child: const ProductView());
      case Routes.clinicInfoView:
        return CustomPageRoute(child: const ClinicInfoView());
      case Routes.hospitalInfoView:
        return CustomPageRoute(child: const HospitalInfoView());
      case Routes.profileView:
        return CustomPageRoute(child: const ProfileView());
      case Routes.addShippingAddressScreen:
        return CustomPageRoute(child: const AddShippingAddressScreen());
case Routes.languageScreen:
        return CustomPageRoute(child: const LanguageScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => HomeCubit(),
            child: const HomeScreen(),
          ),
        );
      case Routes.signUpScreen:
        return CustomPageRoute(child:  const SignUpScreen());
      case Routes.loginScreen:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ));
      case Routes.forgetPasswordScreen:
        return CustomPageRoute(child: const ForgetPasswordScreen());
      case Routes.updatePasswordScreen:
        return CustomPageRoute(child: UpdatePasswordScreen());
      case Routes.otpScreen:
        return CustomPageRoute(child: const OtpScreen());
      case Routes.successfulyUpdatePasswordScreen:
        return CustomPageRoute(child: const SuccessfulyUpdatePasswordScreen());
      case Routes.pharmacyDetails:
        return CustomPageRoute(child: const PharmacyDetailsScreen());

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
