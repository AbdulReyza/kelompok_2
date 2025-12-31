import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/profiles/rio_profile.dart';


class ProfileReyza extends StatefulWidget {
  static const routeName = '/profileReyza';
  const ProfileReyza({super.key});

  @override
  State<ProfileReyza> createState() => _ProfileReyzaState();
}
class _ProfileReyzaState extends State<ProfileReyza> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(
          context,
          ProfileRio.routeName
        );
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF5B9279),
        appBar: AppBar(
          title: const Text("PROFILE REYZA"),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ),
        body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center, 
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/reyza.jpg'),
                    ),
                    const SizedBox(height: 20),
                  Card(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                      child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Abdul Reyza Ramadhanu',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF12130F),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'NIM: 1123150072 | Kelas: TI-23-SE-P1',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF12130F),
                            ),
                          ),
                          SizedBox(height: 15),
                          Divider(color: Color(0xFF12130F)),
                          Text( 
                            'Keahlian:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF12130F),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '- Ms Word\n- Coding\n- Graphic Design',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF12130F),
                            ),
                          ),
                          SizedBox(height: 15),
                          Divider(color: Color(0xFF12130F)),
                          Text( 
                            'Tentang Saya:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF12130F),
                            ),
                          ),
                           SizedBox(height: 5),
                          Text(
                           'Nama Saya Abdul Reyza Ramadhanu, Merupakan salah satu Mahasiswa Global Institute semester 5 dan jurusan saya adalah Software Engineering, saya lahir dan tinggal di tangerang pada tanggal 15 Oktober 2005.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF12130F),
                            ),
                          )
                        ],
                  ),
                     ),
                     ),
                  ],
                  ),
            ),
          ),
      ),
    );
  }
}