import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kelompok_2/data/services/auth_services.dart';
import 'package:kelompok_2/domain/repositories/auth_repositories.dart';
import 'package:kelompok_2/firebase_options.dart';

import 'package:kelompok_2/presentation/pages/about.dart';
import 'package:kelompok_2/presentation/pages/dashboard.dart';
import 'package:kelompok_2/presentation/pages/login.dart';
import 'package:kelompok_2/presentation/pages/notification.dart';
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
import 'package:kelompok_2/presentation/providers/auth_provider.dart';
import 'package:kelompok_2/presentation/widgets/main_layout.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AuthRepository authRepo = AuthService();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider(authRepo)),
      ],
      child: MaterialApp(
          title: 'Thermul',
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

            LoginPage.routeName: (_) => const LoginPage(),

            MainLayout.routeName: (_) => const MainLayout(),
            Dashboard.routeName: (_) => const Dashboard(),
            AboutPage.routeName: (_) => const AboutPage(),
            NotificationPage.routeName: (_) => const NotificationPage(),
            SettingPage.routeName: (_) => const SettingPage(),

            ProfileAbday.routeName: (_) => const ProfileAbday(),
            ProfileReyza.routeName: (_) => const ProfileReyza(),
            ProfileRio.routeName: (_) => const ProfileRio(),
            ProfileArya.routeName: (_) => const ProfileArya(),
          }
        ),
    );
  
  }
}
