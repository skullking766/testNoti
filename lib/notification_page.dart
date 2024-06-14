import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotiPage extends StatefulWidget {
  const NotiPage({super.key});

  @override
  State<NotiPage> createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {

    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;

    return Scaffold(
      appBar: AppBar(title: Text("Notification Page"),),
      body: Column(
        children: [
          Text(message.notification!.title.toString()),
          Text(message.notification!.body.toString())
        ],
      ),
    );
  }
}

    