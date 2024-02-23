import 'package:flutter/material.dart';
import 'package:tabibk/core/helper/extensions.dart';
import 'package:tabibk/core/routing/routes.dart';
import 'package:tabibk/core/theme/app_colors.dart';

import 'build_logo_widget.dart';

class FirstSplashScree extends StatefulWidget {
  const FirstSplashScree({super.key});

  @override
  State<FirstSplashScree> createState() => _FirstSplashScreeState();
}

class _FirstSplashScreeState extends State<FirstSplashScree>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _navigateToSplashTwo();
    super.initState();
  }

  void _navigateToSplashTwo() async {
    await Future.delayed(const Duration(milliseconds: 700), () {
      context.pushReplacementNamed( Routes.secondSplashScreen);
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (_) => const SecondSplashScreen(),
      //   ),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColor.splashColor,
      child: Center(child: buildLogoWidget()),
    );
  }
}
