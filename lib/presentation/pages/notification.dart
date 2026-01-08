import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:kelompok_2/main.dart';


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
    handleInitialMessage();
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

    String? token = await messaging.getToken();
    print('Token Saya: $token');

    FirebaseMessaging.onMessage.listen((RemoteMessage message){
      print("Pesan Foreground: ${message.messageId}");
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      if (message.notification != null) {
        setState(() {
          _message = "${message.notification!.title}: ${message.notification!.body}";
        });

        try {
          flutterLocalNotificationsPlugin.show(
            notification!.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channelDescription: channel.description,
                icon: android?.smallIcon ?? '@mipmap/ic_launcher',
                importance: Importance.max,
                priority: Priority.max,
                showWhen: true,
              ),
            ),
          );
          print("Notifkasi Background: ${notification.title}");
        } catch (e) {
          print("Error Notififikasi Background: $e");
        }
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print("Click Notification");
    if (!mounted) return;
        setState(() {
        _message = "${message.notification!.title}: ${message.notification!.body}";
      });
    });

  }

  Future<void> handleInitialMessage() async {
    RemoteMessage? message = await FirebaseMessaging.instance.getInitialMessage();
      if (message != null && message.notification != null) {
      print("App dibuka dari Notification");
        setState(() {
        _message = "${message.notification!.title}: ${message.notification!.body}";
        });
    }
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: glassAppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
              children: [
                Text(
                    'Cek Notif',
                    style: TextStyle(
                      fontSize: 25
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(_message,
                    style: TextStyle(
                      fontSize: 25
                    ),
                  )
              ],
          ),
        ),
      ),
    );
  }

  AppBar glassAppBar() {
    return AppBar(
      
    );
  }
}