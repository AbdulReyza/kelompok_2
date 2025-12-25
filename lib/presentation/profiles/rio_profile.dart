import 'package:flutter/material.dart';
import 'package:kelompok_2/presentation/profiles/abday_profile.dart';
import 'package:kelompok_2/presentation/profiles/arya_profile.dart';

class ProfileRio extends StatefulWidget {
  static const routeName = '/ProfileRio';
  const ProfileRio({super.key});

  @override
  State<ProfileRio> createState() => _ProfileRioState();
}

class _ProfileRioState extends State<ProfileRio> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(
          context,
          ProfileAbday.routeName
        );
      },
      child: Container(
        color: Color(0xFF12130F),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("PROFIL RIO",
              style: TextStyle(
                color: Color(0xFFCCFB0F),
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
            leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFFCCFB0F),),
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
          ),
          body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                     Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 400,
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [Color(0xFFEAE6E5), Color(0xFF12130F)]
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color:  Color(0xFFCCFB0F),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Color(0xFFCCFB0F), width: 5),
                                    ),
                                    child: Center(
                                      child: CircleAvatar(
                                        radius: 70,
                                        backgroundColor: Colors.white,
                                        foregroundImage: AssetImage('assets/images/cungpruy.jpg'),
                                        
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text('Rio Achyar',
                                  style: TextStyle(
                                    color: Color(0xFFCCFB0F),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCCFB0F),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(9),
                                    child: Text(
                                      '1123150059',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Programming',
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Color(0xFFCCFB0F),
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('Keahlian',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xFFCCFB0F),
                                            ),
                                          ),
                                        ],
                                      ),
                                      
                                      SizedBox(
                                        height: 40,
                                        child: VerticalDivider(
                                          thickness: 2,
                                          color: Color(0xFFCCFB0F),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text('TI SE 23 P1',
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Color(0xFFCCFB0F),
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          Text('Kelas',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xFFCCFB0F),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            
                          ),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
