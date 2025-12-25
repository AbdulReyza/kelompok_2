import 'package:flutter/material.dart';
import 'dart:ui';

class AppNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AppNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            border: Border(
              top: BorderSide(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            borderRadius: BorderRadius.circular(20)
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white54,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.print),
                label: 'Print',
                tooltip: 'Print'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.groups_2),
                label: 'About',
                tooltip: 'About'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setting',
                tooltip: 'Setting'
              ),
            ]
          ),
        ),
      ),
    );
  }
}