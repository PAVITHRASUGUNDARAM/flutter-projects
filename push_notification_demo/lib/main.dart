import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "No message yet";

  @override
  void initState() {
    super.initState();

    // Get FCM token
    FirebaseMessaging.instance.getToken().then((token) {
      print("📱 FCM Token: $token");
    });

    // Listen to messages
    FirebaseMessaging.onMessage.listen((RemoteMessage msg) {
      setState(() {
        message = msg.notification?.title ?? 'No title';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Push Notification App')),
        body: Center(
          child: Text('Message: $message'),
        ),
      ),
    );
  }
}
