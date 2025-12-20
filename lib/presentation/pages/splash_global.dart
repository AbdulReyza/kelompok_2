import 'package:flutter/material.dart';

class SplashGlobal extends StatefulWidget {
  static const routeName = '/splashGlobal';
  const SplashGlobal({super.key});

  @override
  State<SplashGlobal> createState() => _SplashGlobalState();
}

class _SplashGlobalState extends State<SplashGlobal> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFeb1e34),
            Colors.white,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // title: const Text("Dashboard"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: 
                      DecorationImage(
                        image: AssetImage("assets/images/logo_global.jpeg")
                      )
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}