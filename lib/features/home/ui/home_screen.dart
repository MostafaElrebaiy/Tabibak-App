import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/features/home/logic/cubit/home_cubit.dart';

import '../../../core/theme/app_colors.dart';
import '../logic/cubit/home_state.dart';

//delet
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (BuildContext context, HomeState state) {},
      builder: (BuildContext context, HomeState state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              // fixedColor: AppColor.mainBlue,
              selectedItemColor: AppColor.mainBlue,
              unselectedItemColor: AppColor.gray,
              currentIndex: HomeCubit.get(context).currentindex,
              onTap: (index) {
                HomeCubit.get(context).changeIndex(index);
              },
              items: [
                                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppAsset.homeIcon,
                    
                    ),
                     label: "Home"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppAsset.pharmacyIcon,),
                    label: "pharmacy"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppAsset.hospitalIcon),
                    label: "Hospital"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppAsset.blodlIcon),
                    label: "Blood bank"),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppAsset.profileIcon,),
                    label: "Profile"),
              ]),
          body: HomeCubit.get(context)
              .screens[HomeCubit.get(context).currentindex],
        );
      },
    );
  }
}
