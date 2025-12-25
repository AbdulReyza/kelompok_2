import 'package:flutter/material.dart';
import 'dart:ui';

class SettingPage extends StatefulWidget {
  static const routeName = '/setting';
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12130F),
      appBar: glassAppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
              children: [
                Container(
                    child: SizedBox(
                      height: 40,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: (){
                        }, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: Text('LOGOUT',
                        style: TextStyle(
                          color: Colors.white
                        ),),
                        
                      ),
                    ),
                  ),
              ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget glassAppBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            border: Border(
              bottom: BorderSide(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            borderRadius: BorderRadius.circular(20)
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "SETTING",
              style: TextStyle(
                color: Color(0xFFEAE6E5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
}