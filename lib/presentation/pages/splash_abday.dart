import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:kelompok_2/presentation/pages/splash_arya.dart';


class SplashAbday extends StatefulWidget {
  static const routeName = '/splashAbday';
  const SplashAbday({super.key});

  @override
  State<SplashAbday> createState() => _SplashAbdayState();
}

class _SplashAbdayState extends State<SplashAbday> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const SplashArya(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
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
        color: const Color(0xFF5B9279),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset(
                    'assets/animations/Wizard.json',
                    width: 300,
                    height: 300,
                  ),
                  const Text(
                    'THERMUL',
                    style: TextStyle(
                      fontFamily: 'Pixel',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Desain Struk Profesional. Cetak Struk Akurat. Semua dalam Genggaman dengan THERMUL.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Pixel',
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
