import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/pages/splash_abday.dart';
import 'package:kelompok_2/presentation/pages/splash_arya.dart';
import 'package:kelompok_2/presentation/pages/splash_global.dart';
import 'package:kelompok_2/presentation/pages/splash_reyza.dart';
import 'package:kelompok_2/presentation/pages/splash_rio.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'KELOMPOK 2',
        theme: ThemeData(
          fontFamily: 'Pixel',
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: SplashGlobal.routeName,
        routes: {
          SplashGlobal.routeName: (_) => const SplashGlobal(),
          SplashRio.routeName: (_) => const SplashRio(),
          SplashReyza.routeName: (_) => const SplashReyza(),
          SplashArya.routeName: (_) => const SplashArya(),
          SplashAbday.routeName: (_) => const SplashAbday(),
        }
      );
  
  }
}
