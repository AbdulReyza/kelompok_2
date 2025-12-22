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
              color: Color(0xFFEAE6E5),
              fontWeight: FontWeight.bold
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 400,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.black, Colors.grey]
                          ),
                          boxShadow: [
                            BoxShadow(
                              color:  Color.fromRGBO(255, 123, 0, 1),
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
                                  border: Border.all(color: Color.fromRGBO(255, 123, 0, 1), width: 5),
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
                                color: Color.fromRGBO(255, 123, 0, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 123, 0, 1),
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
                                          color: Color.fromRGBO(255, 123, 0, 1),
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Keahlian',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(255, 123, 0, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  SizedBox(
                                    height: 40,
                                    child: VerticalDivider(
                                      thickness: 2,
                                      color: Color.fromRGBO(255, 123, 0, 1),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text('60++',
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Color.fromRGBO(255, 123, 0, 1),
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text('Repository',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(255, 123, 0, 1),
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
    );
  }
}
