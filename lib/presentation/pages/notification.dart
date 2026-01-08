import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  static const routeName = '/notification';
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  String _message = "Tidak ada Notif";


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
    // setupFCM();
    // handleInitialMessage();
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
              children: [],
          ),
        ),
      ),
    );
  }
}