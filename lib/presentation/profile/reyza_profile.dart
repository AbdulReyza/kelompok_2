import 'package:flutter/material.dart';

class ProfileReyza extends StatefulWidget {
  static const routeName = '/profileReyza';
  const ProfileReyza({super.key});

  @override
  State<ProfileReyza> createState() => _ProfileReyzaState();
}
class _ProfileReyzaState extends State<ProfileReyza> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF5B9279),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("PROFIL  REYZA", 
            style: TextStyle(
              color: Color(0xFFEAE6E5)
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
      ),
    );
  }
}