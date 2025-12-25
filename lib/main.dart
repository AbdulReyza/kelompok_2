import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/pages/about.dart';
import 'package:kelompok_2/presentation/pages/dashboard.dart';
import 'package:kelompok_2/presentation/pages/setting.dart';
import 'package:kelompok_2/presentation/pages/splash_abday.dart';
import 'package:kelompok_2/presentation/pages/splash_arya.dart';
import 'package:kelompok_2/presentation/pages/splash_global.dart';
import 'package:kelompok_2/presentation/pages/splash_reyza.dart';
import 'package:kelompok_2/presentation/pages/splash_rio.dart';
import 'package:kelompok_2/presentation/profiles/abday_profile.dart';
import 'package:kelompok_2/presentation/profiles/arya_profile.dart';
import 'package:kelompok_2/presentation/profiles/reyza_profile.dart';
import 'package:kelompok_2/presentation/profiles/rio_profile.dart';
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

          ProfileAbday.routeName: (_) => const ProfileAbday(),
          ProfileReyza.routeName: (_) => const ProfileReyza(),
          ProfileRio.routeName: (_) => const ProfileRio(),
          ProfileArya.routeName: (_) => const ProfileArya(),

          Dashboard.routeName: (_) => const Dashboard(),
          AboutPage.routeName: (_) => const AboutPage(),
          SettingPage.routeName: (_) => const SettingPage(),
        }
      );
  
  }
}
