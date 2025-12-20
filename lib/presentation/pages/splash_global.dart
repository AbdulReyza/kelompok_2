import 'package:flutter/material.dart';
import 'dart:async';

import 'package:kelompok_2/presentation/pages/splash_rio.dart';

class SplashGlobal extends StatefulWidget {
  static const routeName = '/splashGlobal';
  const SplashGlobal({super.key});

  @override
  State<SplashGlobal> createState() => _SplashGlobalState();
}

class _SplashGlobalState extends State<SplashGlobal> {
  Timer? _timer;


  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 2), () {
      if(mounted){
        Navigator.of(context).pushReplacementNamed(SplashRio.routeName);
      };
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }


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