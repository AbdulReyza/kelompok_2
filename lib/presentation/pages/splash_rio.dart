import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashRio extends StatefulWidget {
  static const routeName = '/splashRio';
  const SplashRio({super.key});

  @override
  State<SplashRio> createState() => _SplashRioState();
}

class _SplashRioState extends State<SplashRio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF473BFD),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(""),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
