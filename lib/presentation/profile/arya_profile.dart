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
          title: const Text("PROFIL  ARYA", 
            style: TextStyle(
              color: Color(0xFFEAE6E5)
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  color: Color(0xFFCCFB0F),
                  elevation: 10,
                  margin: EdgeInsets.all(10),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: ListTile(
                              leading: Image.asset('assets/images/arya_profile.jpg'),
                              title: Text('Arya Pramudya Akbar',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF12130F),
                                ),
                              ),
                              subtitle: Text('1123150004 (TI-23-SE 1)'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Text('Keahlian',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ), 
                                Text(' : '),
                                Text('Coaching, Ms Office , & Coding',),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              children: [
                                Text('Tentang Saya',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF12130F),
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
