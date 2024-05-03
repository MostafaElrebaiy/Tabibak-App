import 'package:flutter/material.dart';
import 'package:tabibk/features/blood_bank/ui/blood_bank_screen.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/hospital_screen_view.dart';
import 'package:tabibk/features/pharmacy/ui/pharmacy_screen.dart';
import 'package:tabibk/features/product/view/product_view.dart';
import 'package:tabibk/features/profile_screens/profile/view/profile_view.dart';

class AppConstant {
  static const String arabicFontFamily = 'Cairo';
  static const String englishFontFamily = 'Mulish';
  static const double appHorizontalPadding = 24;
  static const double appVerticalPadding = 20;
  static const List<Widget> listOfScreens = [
    PharmacyScreen(),
    HospitalScreenView(),
    BloodBankScreen(),
    ProductView(),
    ProfileView(),
  ];
}
