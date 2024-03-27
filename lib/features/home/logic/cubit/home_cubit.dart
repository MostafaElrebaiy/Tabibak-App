import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/features/blood_bank/ui/blood_bank_screen.dart';
import 'package:tabibk/features/home/logic/cubit/home_state.dart';
import 'package:tabibk/features/hospital_and_clinic_system/hospital/view/hospital_screen_view.dart';
import 'package:tabibk/features/pharmacy/ui/pharmacy_screen.dart';
import 'package:tabibk/features/profile_screens/profile/view/profile_view.dart';

import '../../../../core/theme/app_colors.dart';


class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  int currentindex = 0;
  Color color = AppColor.gray;
  List<Widget> screens = [
    const PharmacyScreen(),
    const HospitalScreenView(),
    const BloodBankScreen(),
    const ProfileView(),
  ];
  void changeIndex(int index) {
    currentindex = index;
    color = color;
    emit(ChangeBottomNavBarState());
  }
}
