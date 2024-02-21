import 'package:flutter/material.dart';
import 'package:tabibk/features/splash/presentation/widgets/first_splash_screen.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FirstSplashScree(),
    );
  }
}
