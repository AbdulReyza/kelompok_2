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
      child: Container(
        color: Color(0xFF473BFD),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(""),
            automaticallyImplyLeading: false,
          ),
        ),
      ),
    );
  }
}