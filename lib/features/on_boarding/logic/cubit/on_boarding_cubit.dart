import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingState());

  void checkCurrentPage(int pageIndex, BuildContext context) {
    if (state.pageIndex == 1) {
      context.pushNamed(Routes.secondOnBoardingScreen);
      // Navigator.push(
      //   context,
      //   CustomPageRoute(child: const OnBoardingLast()),
      // );
    } else if (state.pageIndex == 0) {
      state.pageIndex += 1;
      state.controller.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  Future<void> close() {
    state.controller.dispose();
    return super.close();
  }
}
