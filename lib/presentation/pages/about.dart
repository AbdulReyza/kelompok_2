import 'package:flutter/material.dart';
import 'package:kelompok_2/data/models/developers.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<DevelopersModel> developers = [];

  void _getDevelopers() {
    developers = DevelopersModel.getDevelopers();
  }

  @override
  void initState() {
    super.initState();
    _getDevelopers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12130F),
      appBar: myAppBar(),
      body: Center(
          child: myDev(),
      ),
    );
  }

  ListView myDev() {
    return ListView.separated(
          padding:  EdgeInsets.only(
            top: 50, 
            bottom: 70
          ),
          itemCount: developers.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  developers[index].route
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: developers[index].boxColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        blurRadius: 12,
                        spreadRadius: 2,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(developers[index].iconPath),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            developers[index].name, 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                
                ),
              ),
            );
          }, 
          separatorBuilder: (context, index) {
            return SizedBox(height: 20);
          }, 
        );
  }
}


  @override
  Widget build(BuildContext context) {
    return myAppBar();
  }

  AppBar myAppBar() {
    return AppBar(
    title: Text("OUR DEVELOPERS",
      style: TextStyle(
        color: Color(0xFFCCFB0F),
      ),
    ),
    centerTitle: true,
    actions: const [],
  );
  }
