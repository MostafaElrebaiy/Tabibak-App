import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
            bottomNavigationBar: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                  child: GNav(
                      selectedIndex: _currentIndex,
                      onTabChange: (value) {
                        setState(() {
                          _currentIndex = value;
                        });
                      },
                      rippleColor: AppColor.mainBlue,
                      hoverColor: AppColor.lightGray,
                      haptic: true,
                      tabBorderRadius: 15,
                      tabActiveBorder:
                          Border.all(color: AppColor.mainBlue, width: .5),
                      // tabBorder: Border.all(color: AppColor.mainBlue, width: 1),
                      curve: Curves.ease, // tab animation curves
                      duration: const Duration(milliseconds: 600),
                      gap: 8,
                      color: AppColor.gray,
                      activeColor: AppColor.mainBlue,
                      iconSize: 24, // tab button icon size
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      tabs: [
                        GButton(
                          icon: LineIcons.home,
                          text: AppString.pharamacy.tr(context),
                        ),
                        GButton(
                          icon: LineIcons.hospitalAlt,
                          text: AppString.hospital.tr(context),
                        ),
                        GButton(
                          icon: LineIcons.search,
                          text: AppString.bloodBank.tr(context),
                        ),
                        GButton(
                          icon: LineIcons.shoppingCart,
                          text: AppString.product.tr(context),
                        ),
                        GButton(
                          icon: LineIcons.user,
                          text: AppString.profile.tr(context),
                        ),
                      ]),
                ),
              ),
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
