import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/profile/reyza_profile.dart';


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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center( 
          child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileReyza(), 
          ),
        );
      },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/abdayprofile.jpg'),
              ),
              const SizedBox(height: 15),
              
              const Text(
                "Muhammad Abday Abdul Hafidz",
                style: TextStyle(
                  fontFamily: 'Pixel',
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Color(0xFFEAE6E5),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "NIM: 1123150093 | Kelas: TI-23-SE-1",
                style: TextStyle(
                  fontFamily: 'Pixel',
                  fontSize: 16,
                  color: Color(0xFFCCFB0F),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              const Text(
                "Keahlian:",
                style: TextStyle(
                  fontFamily: 'Pixel',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF473BFD),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              const Text(
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
