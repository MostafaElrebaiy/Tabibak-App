import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/routing/custom_page_route.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/features/ai/logic/cubit/ai_model_cubit.dart';
import 'package:tabibk/features/ai/ui/ai_view.dart';
import 'package:tabibk/features/auth/forget_password/logic/forget_password_cubit.dart';
import 'package:tabibk/features/auth/forget_password/ui/forget_password_screen.dart';
import 'package:tabibk/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:tabibk/features/auth/otp/logic/check_code_cubit.dart';
import 'package:tabibk/features/auth/otp/ui/otp.dart';
import 'package:tabibk/features/auth/signup/logic/sign_up_cubit.dart';
import 'package:tabibk/features/auth/update_password/ui/successfully_update_pass.dart';
import 'package:tabibk/features/auth/update_password/ui/update_password.dart';
import 'package:tabibk/features/blood_bank/data/model/blood_bank_response.dart';
import 'package:tabibk/features/blood_bank/ui/widgets/blood_bank_profile.dart';
import 'package:tabibk/features/blood_bank/ui/widgets/search_result_of_blood_type.dart';
import 'package:tabibk/features/check_out/view/check_out_view.dart';
import 'package:tabibk/features/check_out/view/widgets/add_shipping_screen.dart';
import 'package:tabibk/features/hospital_and_clinic_system/clinic_info/view/clinic_info_view.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/data/model/hospital_model/hospital_and_clinic_response.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/hospital_screen_view.dart';
import 'package:tabibk/features/home/ui/home_screen.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital_info/view/hospital_info_view.dart';
import 'package:tabibk/features/on_boarding/view/on_boarding_view.dart';
import 'package:tabibk/features/on_boarding/view/widgets/on_boarding_last_screen.dart';
import 'package:tabibk/features/pharmacy_screens/search_phamacy/data/model/arg_pharmacy/search_result_model.dart';
import 'package:tabibk/features/pharmacy_screens/recommended_medicine/data/model/pharmacy_medicien_response.dart';
import 'package:tabibk/features/pharmacy_screens/search_phamacy/data/model/search_pharmacy_response.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy_details_screen/pharmacy_details_screen.dart';
import 'package:tabibk/features/pharmacy_screens/pharmacy/ui/pharmacy_screen.dart';
import 'package:tabibk/features/pharmacy_screens/search_phamacy/ui/search_pharmacy_view.dart';
import 'package:tabibk/features/pharmacy_screens/pharmcy_profile/ui/pharmacy_profile.dart';
import 'package:tabibk/features/pharmacy_screens/search_phamacy/logic/pharmacy_cubit.dart';
import 'package:tabibk/features/product/view/product_view.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/logic/update_profile/update_profile_cubit.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/view/edit_profile_view.dart';
import 'package:tabibk/features/profile_screens/language_profile_view/logic/cubit/locale_cubit.dart';
import 'package:tabibk/features/profile_screens/language_profile_view/view/language_profile_view.dart';
import 'package:tabibk/features/profile_screens/profile/data/model/user_details_response.dart';
import 'package:tabibk/features/profile_screens/profile/view/profile_view.dart';
import 'package:tabibk/features/splash/view/widgets/splash_view_body.dart';
import '../../features/auth/login/ui/login_screen.dart';
import '../../features/auth/signup/ui/signup_screen.dart';
import '../../features/auth/update_password/logic/reset_password_cubit.dart';
import '../../features/blood_bank/ui/blood_bank_screen.dart';
import '../di/dependancy_injection.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this
    // final argument = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingView:
        return CustomPageRoute(child: const OnBoardingView());

      // case Routes.splashScreen:
      //   return CustomPageRoute(child: const SplashView());

      case Routes.splashViewBody:
        return CustomPageRoute(child: const SplashViewBody());

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
        final HospitalAndClinicData hospitalAndClinicData =
            settings.arguments as HospitalAndClinicData;
        return CustomPageRoute(
            child:
                HospitalInfoView(hospitalAndClinicData: hospitalAndClinicData));
      case Routes.profileView:
        return CustomPageRoute(child: const ProfileView());
      case Routes.editProfileView:
        UserDetailsResponse? userDetailsResponse;
        userDetailsResponse = settings.arguments as UserDetailsResponse?;
        return CustomPageRoute(
          child: BlocProvider(
            create: (context) => UpdateProfileCubit(getIt())
              ..userDetailsResponse = userDetailsResponse,
            child: const EditProfileView(),
          ),
        );
      case Routes.addShippingAddressScreen:
        return CustomPageRoute(child: const AddShippingAddressScreen());
      case Routes.languageProfileView:
        return CustomPageRoute(
            child: BlocProvider(
          create: (_) => LocaleCubit()..getSavedLanguage(),
          child: const LanguageProfileView(),
        ));
      case Routes.homeScreen:
        return MaterialPageRoute(
          // ignore: prefer_const_constructors
          builder: (_) => Home(),
        );
      case Routes.signUpScreen:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<SignupCubit>(),
          child: const SignUpScreen(),
        ));
      case Routes.bloodBankProfile:
        final BloodCenters bloodCenters = settings.arguments as BloodCenters;
        return CustomPageRoute(
            child: BloodBankProfile(bloodBankData: bloodCenters));
      case Routes.loginScreen:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ));
      case Routes.forgetPasswordScreen:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<ForgetCubit>(),
          child: const ForgetPasswordScreen(),
        ));
      case Routes.updatePasswordScreen:
        //////////////////////////type 'Null' is not a subtype of type 'String'????????
        String arg;
        arg = settings.arguments as String;
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<ResetPasswordCubit>(),
          child: UpdatePasswordScreen(arg),
        ));
      case Routes.otpScreen:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<CheckCodeCubit>(),
          child: const OtpScreen(),
        ));
      case Routes.successfulyUpdatePasswordScreen:
        return CustomPageRoute(child: const SuccessfulyUpdatePasswordScreen());
      case Routes.pharmacy:
        return CustomPageRoute(child: const PharmacyScreen());
      case Routes.pharmacyDetailsScreen:
        final MedicinData medicineData = settings.arguments as MedicinData;
        return CustomPageRoute(
            child: PharmacyDetailsScreen(medicineData: medicineData));
      case Routes.bloodBank:
        return CustomPageRoute(child: const BloodBankScreen());
      case Routes.bloodBankSearchScreen:
        final BloodBankResponse bloodBankResponse;
        bloodBankResponse = settings.arguments as BloodBankResponse;
        return CustomPageRoute(
            child:
                SearchResultOfBloodType(bloodBankResponse: bloodBankResponse));
      case Routes.SearhPharmacyView:
        ArgResultPharmacy arg;
        arg = settings.arguments as ArgResultPharmacy;
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => PharmacyCubit(getIt())
            ..searchForMedicien(
                medicineName: arg.medicineName, lat: arg.lat, lng: arg.lng),
          child: const SearhPharmacyView(),
        ));

      case Routes.uploadImage:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => ImageCubit(getIt()),
          child: const ImageUploadScreen(),
        ));
      case Routes.pharmacyProfile:
        final Pharmacies pharmacy = settings.arguments as Pharmacies;

        return CustomPageRoute(child: PharmacyProfile(pharmacy: pharmacy));

      default:
        return null;
    }
  }
}
