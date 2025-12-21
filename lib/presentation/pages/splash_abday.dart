import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class SplashAbday extends StatefulWidget {
  static const routeName = '/splashAbday';
  const SplashAbday({super.key});

  @override
  State<SplashAbday> createState() => _SplashAbdayState();
}
class _SplashAbdayState extends State<SplashAbday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
    onTap: () {Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => const SplashArya(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 800),
          ),
        );},
    child: Container(
      color: const Color(0xFFCCFB0F),
    child: Center(
  child: Column(
    mainAxisSize: MainAxisSize.min,
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
      const Text('THERMUL',
        style: TextStyle(
          fontFamily: 'Pixel',
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 10),
      Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Text('Desain Struk Profesional. Cetak Struk Akurat. Semua dalam Genggaman dengan THERMUL.',
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

    );
  }
}
