import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

class SplashRio extends StatefulWidget {
  static const routeName = '/splashRio';
  const SplashRio({super.key});

  @override
  State<SplashRio> createState() => _SplashRioState();
}

class _SplashRioState extends State<SplashRio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: const Text("riooooooo"),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text(
          'rio',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

  }
}