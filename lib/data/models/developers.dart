import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/profiles/abday_profile.dart';
import 'package:kelompok_2/presentation/profiles/reyza_profile.dart';
import 'package:kelompok_2/presentation/profiles/rio_profile.dart';

class DevelopersModel {
  String name;
  Color boxColor;
  String route;
  String iconPath;

  DevelopersModel({
    required this.name,
    required this.boxColor,
    required this.route,
    required this.iconPath,
  });

  static List<DevelopersModel> getDevelopers() {
    List<DevelopersModel> developers = [];

    developers.add(
      DevelopersModel(
        name: 'Abdul Reyza Ramadhanu', 
        boxColor: Color(0xFFCCFB0F), 
        route: ProfileReyza.routeName, 
        iconPath: 'assets/images/reyza.jpg'
      ),
    );

    developers.add(
      DevelopersModel(
        name: 'Rio Achyar', 
        boxColor: Color(0xFF12130F), 
        route: ProfileRio.routeName, 
        iconPath: 'assets/images/cungpruy.jpg'
      ),
    );

    developers.add(
      DevelopersModel(
        name: 'Muhammad Abday Abdul Hafidz', 
        boxColor: Color(0xFF5B9279), 
        route: ProfileAbday.routeName, 
        iconPath: 'assets/images/abdayprofile.jpg'
      ),
    );

    return developers;
  }
}