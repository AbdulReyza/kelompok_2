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
            selectedItemColor: Colors.grey,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.print, color: Colors.grey,),
                label: 'Print',
                tooltip: 'Print'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.groups_2, color: Colors.grey,),
                label: 'About',
                tooltip: 'About'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active_sharp, color: Colors.grey,),
                label: 'Notification',
                tooltip: 'Notification'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Colors.grey,),
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