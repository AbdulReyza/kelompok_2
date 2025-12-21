import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashReyza extends StatefulWidget {
  static const routeName = '/splashReyza';
  const SplashReyza({super.key});

  @override
  State<SplashReyza> createState() => _SplashReyzaState();
}

class _SplashReyzaState extends State<SplashReyza> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/splashReyza');
      },
    );
  }
}