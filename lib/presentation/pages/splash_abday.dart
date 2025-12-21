import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class SplashAbday extends StatelessWidget {
  const SplashAbday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
    onTap: () {},
    child: Container(
      color: const Color(0xFFCCFB0F
    ),
    child: Center(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Lottie.asset(
        'assets/animations/Wizard.json', 
        width: 300,
        height: 300,
        fit: BoxFit.contain,
        repeat: true,
        reverse: false,
        animate: true,
      ),
      Text('Splash Abday'),
    ],
  ),
),
    ),
      ),

    );
  }
}
