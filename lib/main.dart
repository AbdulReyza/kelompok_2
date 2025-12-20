import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/pages/splash_global.dart';
import 'package:kelompok_2/presentation/pages/splash_rio.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashGlobal(),
      routes: {
        '/splashRio': (context) => const SplashRio(),
      }
    );


  
  }
}
