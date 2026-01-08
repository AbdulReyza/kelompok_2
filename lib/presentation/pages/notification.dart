import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


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
    SetupFCM();
    // handleInitialMessage();
    });
  }

  Future<void> SetupFCM() async {
    print('Setup FCM');
    final messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: true,
      provisional: false,
      sound: true
    );

    print("Status: ${settings.authorizationStatus}");

    if(settings.authorizationStatus == AuthorizationStatus.denied){
      print("User Menolak");
      setState(() {
        _message = 'Permission denied, Please allowed in setting.';
      });
      return;
    }

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