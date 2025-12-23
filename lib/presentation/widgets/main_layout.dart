import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/pages/dashboard.dart';
import 'package:kelompok_2/presentation/widgets/navigation_bar.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _index = 0;

  final pages = [
    Dashboard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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