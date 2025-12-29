import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/pages/login.dart';
import 'package:kelompok_2/presentation/widgets/main_layout.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kelompok_2/presentation/pages/splash_rio.dart';
import 'package:kelompok_2/presentation/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class SplashGlobal extends StatefulWidget {
  static const routeName = '/splashGlobal';
  const SplashGlobal({super.key});

  @override
  State<SplashGlobal> createState() => _SplashGlobalState();
}

class _SplashGlobalState extends State<SplashGlobal> {
  @override
  void initState() {
    super.initState();
    _handleNavigation();
  }

  Future<void> _handleNavigation() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;

    final prefs = await SharedPreferences.getInstance();
    final bool isFirstOpen = !(prefs.getBool('onboarding_done') ?? false);

    final auth = context.read<AuthProvider>();

    while (!auth.isAuthReady) {
      await Future.delayed(const Duration(milliseconds: 100));
    }

    if (isFirstOpen) {
      await prefs.setBool('onboarding_done', true);
      Navigator.pushReplacementNamed(context, SplashRio.routeName);
      return;
    }

    if (auth.uid == null) {
      Navigator.pushReplacementNamed(context, LoginPage.routeName);
    } else {
      Navigator.pushReplacementNamed(context, MainLayout.routeName);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF32529e),
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
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo_global.jpeg"))),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Think Smartly & Globally',
                  style: TextStyle(
                    fontFamily: 'MrDafoe',
                    fontSize: 25,
                    color: Color(0xFF1f3e9a),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
