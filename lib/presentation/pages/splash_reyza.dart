import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/pages/splash_arya.dart';
import 'package:lottie/lottie.dart';

class SplashReyza extends StatefulWidget {
  static const routeName = '/splashReyza';
  const SplashReyza({super.key});

  @override
  State<SplashReyza> createState() => _SplashReyzaState();
}

class _SplashReyzaState extends State<SplashReyza> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
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
        );
      },
      child: Container(
        color: Color(0xFF5B9279),
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
                    'assets/animations/Printing.json', 
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                    repeat: true,
                    reverse: false,
                    animate: true,
                  ),
                  Text('THERMUL',
                    style: TextStyle(
                      fontFamily: 'Pixel',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Text('Nikmati Kemudahan Mencetak Struk Kapan Saja, Di Mana Saja. Tanpa Ribet, Tanpa Batas!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Pixel',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]
               ),
            ),
          ),
        ),
      ),
    );
  }
}