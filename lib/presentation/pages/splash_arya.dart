import 'package:flutter/material.dart';

class SplashArya extends StatefulWidget {
  static const routeName = '/SplashArya';
  const SplashArya({super.key});

  @override
  State<SplashArya> createState() => _SplashAryaState();
}

class _SplashAryaState extends State<SplashArya> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFCCFB0F),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(""),
          automaticallyImplyLeading: false,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
