import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/pages/about.dart';
import 'package:kelompok_2/presentation/pages/dashboard.dart';
import 'package:kelompok_2/presentation/pages/setting.dart';
import 'package:kelompok_2/presentation/widgets/navigation_bar.dart';

class MainLayout extends StatefulWidget {
  static const routeName = '/main';
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _index = 0;

  final pages = [
    Dashboard(),
    AboutPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_index],
      bottomNavigationBar: AppNavigationBar(
        currentIndex: _index, 
        onTap: (i){
          setState(() {
            _index = i;
          });
        }
      )
    );
  }
}