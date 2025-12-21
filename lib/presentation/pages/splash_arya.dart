import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/pages/splash_abday.dart';
import 'package:kelompok_2/presentation/pages/splash_rio.dart';
import 'package:lottie/lottie.dart';

class SplashArya extends StatefulWidget {
  static const routeName = '/SplashArya';
  const SplashArya({super.key});

  @override
  State<SplashArya> createState() => _SplashAryaState();
}

class _SplashAryaState extends State<SplashArya> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => const SplashAbday(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 800),
          ),
        );
      },
      child: Container(
        color: Color(0xFFCCFB0F),
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
                    'assets/animations/Receipt.json', 
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                    repeat: true,
                    reverse: false,
                    animate: true,
                  ),
                  Text('THERMUL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Text('Masa Depan Cetak Struk Ada di Tangan Anda. THERMUL: Solusi Praktis untuk Bisnis Anda',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
