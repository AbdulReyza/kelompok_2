import 'package:flutter/material.dart';

class ProfilRio extends StatefulWidget {
  static const routeName = '/profilRio';
  const ProfilRio({super.key});

  @override
  State<ProfilRio> createState() => _ProfilRioState();
}

class _ProfilRioState extends State<ProfilRio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF12130F),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("PROFIL RIO",
            style: TextStyle(
              color: Color(0xFFEAE6E5)
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
