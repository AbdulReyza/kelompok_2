import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text("riooooooo"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            children: [],
        ),
      ),
    );
  }
}