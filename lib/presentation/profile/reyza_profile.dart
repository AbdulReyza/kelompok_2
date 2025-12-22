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
    return Scaffold(
      backgroundColor: const Color(0xFF5B9279),
      appBar: AppBar(
        title: const Text("Profile   Reyza"),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                backgroundImage: AssetImage('assets/images/reyza.jpg'),
              ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}