import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _navigateToOnBoardingScreen();
  }

  void _navigateToOnBoardingScreen() async {
    await Future.delayed(const Duration(milliseconds: 3000),
        () => context.pushReplacementNamed(Routes.onBoardingView));
  }

  // final Offset _offset = const Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColor.primaryBlue,
      child: Center(
        child: Text(
          'Tabibak',
          style: TextStyle(
            color: AppColor.white,
            fontSize: 70.sp,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w800,
          ),
        )
            .animate()
            .fade(delay: 300.milliseconds, duration: 700.milliseconds)
            .shimmer(
                delay: 1000.milliseconds,
                duration: 1500.milliseconds,
                padding: 40,
                angle: 0,
                color: AppColor.primaryBlue,
                size: 1),
      ),

      // TweenAnimationBuilder<Offset>(
      //   tween: Tween(begin: const Offset(100, 0), end: _offset),
      //   duration: const Duration(milliseconds: 900),
      //   curve: Curves.easeInOut,
      //   builder: (_, offset, child) =>
      //       Transform.translate(offset: offset, child: child),
      //   child:
      // ),
    );
  }
}
