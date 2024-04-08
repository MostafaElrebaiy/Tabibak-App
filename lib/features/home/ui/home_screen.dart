import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:tabibk/core/theme/app_colors.dart';
import 'package:tabibk/features/product/view/product_view.dart';

import '../../blood_bank/ui/blood_bank_screen.dart';
import '../../hospital_and_clinic_system/hospital/view/hospital_screen_view.dart';
import '../../pharmacy/ui/pharmacy_screen.dart';
import '../../profile_screens/profile/view/profile_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> _listOptions() {
    return [
      const PharmacyScreen(),
      const HospitalScreenView(),
      const BloodBankScreen(),
      const ProductView(),
      const ProfileView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          decoration: const BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                tabs: const [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Pharamacy',
                  ),
                  GButton(
                    icon: LineIcons.hospitalAlt,
                    text: 'Hospital',
                  ),
                  GButton(
                    icon: LineIcons.search,
                    text: 'Blood Bank',
                  ),
                  GButton(
                    icon: LineIcons.shoppingCart,
                    text: 'Product',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                  
                ]),
          ),
        ),
      ),
      body: _listOptions()[_currentIndex],
    );
  }
}
