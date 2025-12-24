import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.separated(
          itemCount: 4,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: 60,
              color: Colors.blue[100],
              child: Center(child: Text('Item ${index + 1}', style: TextStyle(fontSize: 18))),
            
            );
          }, 
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.grey, thickness: 1,
            );
          }, 
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
}