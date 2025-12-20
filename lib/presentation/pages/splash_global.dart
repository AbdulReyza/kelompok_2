import 'package:flutter/material.dart';

class SplashGlobal extends StatefulWidget {
  const SplashGlobal({super.key});

  @override
  State<SplashGlobal> createState() => _SplashGlobalState();
}

class _SplashGlobalState extends State<SplashGlobal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
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