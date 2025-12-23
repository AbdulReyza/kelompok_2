import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.print),
          label: 'Print'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups_2),
          label: 'About'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting'
        ),
      ]
    );
  }
}