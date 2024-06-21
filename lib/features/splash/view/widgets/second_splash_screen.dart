import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({super.key});

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToOnBoardingScreen();
  }

  void _navigateToOnBoardingScreen() async {
    await Future.delayed(const Duration(milliseconds: 1100),
        () => context.pushReplacementNamed(Routes.onBoardingView));
  }

  final Offset _offset = const Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColor.primaryBlue,
      child: TweenAnimationBuilder<Offset>(
          tween: Tween(begin: const Offset(100, 0), end: _offset),
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeInOut,
          builder: (_, offset, child) =>
              Transform.translate(offset: offset, child: child),
          child: Center(
            child: Text(
              'Tabibak',
              style: TextStyle(
                color: AppColor.white,
                fontSize: 48.sp,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
