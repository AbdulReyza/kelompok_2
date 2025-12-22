import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; 

class ProfileAbday extends StatelessWidget {
  static const routeName = '/profileAbday';
  const ProfileAbday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF12130F),
      appBar: AppBar(
        title: const Text("Profil Mahasiswa"),
        backgroundColor: const Color(0xFF5B9279),
        elevation: 0,
      ),
      body: SingleChildScrollView(
         padding: const EdgeInsets.all(20), 
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    CircleAvatar(
      radius: 80,
      backgroundImage: AssetImage('assets/images/abdayprofile.jpg'),
    ),
    SizedBox(height: 15),
    Lottie.asset(
      'assets/animations/profile_student.json',
      width: 150,
      height: 150,
      repeat: true,
    ),
    Text(
      "Muhammad abday abdul hafidz",
      style: TextStyle(
        fontFamily: 'Pixel',
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: Color(0xFFEAE6E5),
      ),
    ),
    // 
  ],
),

      ), 
    );
  }
}
