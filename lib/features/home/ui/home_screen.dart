import 'package:connectivity/connectivity.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:tabibk/core/helper/app_assets.dart';
import 'package:tabibk/core/helper/app_localization.dart';
import 'package:tabibk/core/helper/app_string.dart';
import 'package:tabibk/core/helper/spacing.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/core/theme/app_constant.dart';
import 'package:tabibk/core/theme/styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConnectivityResult>(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          return Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              index: _currentIndex,
              backgroundColor: AppColor.white,
              color: AppColor.primaryBlue,
              buttonBackgroundColor: AppColor.primaryBlue,
              animationDuration:
                  const Duration(milliseconds: AppConstant.animationDuration),
              animationCurve: Curves.easeInOutCubic,
              height: 50.h,
              items: const [
                Icon(LineIcons.capsules, size: 30, color: AppColor.white),
                Icon(LineIcons.hospitalAlt, size: 30, color: AppColor.white),
                Icon(LineIcons.heart, size: 30, color: AppColor.white),
                Icon(LineIcons.stickyNoteAlt, size: 30, color: AppColor.white),
                Icon(LineIcons.user, size: 30, color: AppColor.white),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            body: snapshot.data == ConnectivityResult.none
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LottieBuilder.asset(
                          AppAsset.noInternetJson3,
                          height: 150,
                        ),
                        verticalSpace(20),
                        Text(AppString.noInternet.tr(context),
                            style: AppStyle.f20BlackW700),
                      ],
                    ),
                  )
                : AppConstant.listOfScreens[_currentIndex],
          );
        });
  }
}
