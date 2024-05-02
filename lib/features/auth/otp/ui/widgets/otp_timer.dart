import 'package:flutter/material.dart';

class OtpTimer extends StatelessWidget {
  const OtpTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Duration>(
        duration: const Duration(minutes: 3),

        tween: Tween(begin: const Duration(minutes: 3), end: Duration.zero),
        onEnd: () {
        

        },
        builder: (BuildContext context, Duration value, Widget? child) {
          final minutes = value.inMinutes;
          final seconds = value.inSeconds % 60;
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text('$minutes:$seconds',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black,
                      
                      fontSize: 20)));
        });
  }
}
