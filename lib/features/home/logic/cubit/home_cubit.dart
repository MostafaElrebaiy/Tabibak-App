import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/features/home/logic/cubit/home_state.dart';
import 'package:tabibk/features/pharmacy/ui/pharmacy_screen.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../hospital_and_clinic_system/hospital/view/hospital_screen_view.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  int currentindex = 0;
  Color color = AppColor.gray;
  List<Widget> screens = [
    const PharmacyScreen(),
    const HospitalScreenView(),
  ];
  void changeIndex(int index) {
    currentindex = index;
    color = color;
    emit(ChangeBottomNavBarState());
  }
}
