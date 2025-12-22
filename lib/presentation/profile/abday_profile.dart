import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/profile/reyza_profile.dart';

class ProfileAbday extends StatefulWidget {
  static const routeName = '/profileAbday';
  const ProfileAbday({super.key});

  @override
  State<ProfileAbday> createState() => _ProfileAbdayState();
}

class _ProfileAbdayState extends State<ProfileAbday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF12130F),
      appBar: AppBar(
        title: const Text(
          "PROFIL MAHASISWA",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFCCFB0F),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileReyza(),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage:
                        AssetImage('assets/images/abdayprofile.jpg'),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Muhammad Abday Abdul Hafidz",
                    style: TextStyle(
                      fontFamily: 'Pixel',
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color(0xFFEAE6E5),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "NIM: 1123150093 | KELAS: TI-23-SE-1",
                    style: TextStyle(
                      fontFamily: 'Pixel',
                      fontSize: 16,
                      color: Color(0xFFCCFB0F),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Keahlian:",
                    style: TextStyle(
                      fontFamily: 'Pixel',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF473BFD),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "- Flutter Basic\n- JavaScript\n- HTML & CSS",
                    style: TextStyle(
                      fontFamily: 'Pixel',
                      fontSize: 16,
                      color: Color(0xFFEAE6E5),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
