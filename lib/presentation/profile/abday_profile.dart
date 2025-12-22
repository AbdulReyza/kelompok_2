import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // import Lottie

class ProfileAbday extends StatelessWidget {
  static const routeName = '/profileAbday';
  const ProfileAbday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold jadi root dari halaman profile
      backgroundColor: const Color(0xFF12130F), // warna background
      appBar: AppBar(
        title: const Text("Profil Mahasiswa"),
        backgroundColor: const Color(0xFF5B9279),
        elevation: 0,
      ),
      body: Container(), // nanti akan kita isi di step berikut
    );
  }
}
