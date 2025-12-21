import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:kelompok_2/presentation/pages/splash_reyza.dart';

class SplashRio extends StatefulWidget {
  static const routeName = '/splashRio';
  const SplashRio({super.key});

  @override
  State<SplashRio> createState() => _SplashRioState();
}

class _SplashRioState extends State<SplashRio> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => const SplashReyza(),
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
        color: Color(0xFF473BFD),
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
                    'assets/animations/Invoice Printing.json', 
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
                    child: Text('Ubah Ponsel Anda Menjadi Pusat Cetak Struk Cepat dan Handal. Siap untuk Setiap Transaksi!',
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
