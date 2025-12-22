import 'package:flutter/material.dart';

class ProfileArya extends StatefulWidget {
  static const routeName = '/profileArya';
  const ProfileArya({super.key});

  @override
  State<ProfileArya> createState() => _ProfileAryaState();
}

class _ProfileAryaState extends State<ProfileArya> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF5B9279),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(""),
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
