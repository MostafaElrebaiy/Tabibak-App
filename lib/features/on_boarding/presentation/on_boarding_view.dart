import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:tabibk/features/on_boarding/presentation/widgets/on_boarding_body.dart';


class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(_) =>  OnBoardingCubit(),
        child: const  Scaffold(
          backgroundColor: AppColor.white,
          body: OnBoardingBody(),
        ));
  }
}
