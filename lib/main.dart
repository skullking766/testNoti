import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_noti_proj1/firebase_api.dart';
import 'package:flutter_noti_proj1/firebase_options.dart';
import 'package:flutter_noti_proj1/home_page.dart';
import 'package:flutter_noti_proj1/notification_page.dart';

final navigationKey = GlobalKey<NavigatorState>();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigationKey,
      home: HomePage(),
      routes: {
        '/notification_screen':(context) => const NotiPage()
      },
    );
  }
}
