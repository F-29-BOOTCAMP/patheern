import 'package:flutter/material.dart';
import 'package:local_notification/Services/notifi_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Yeni Bildirim'),
        onPressed: () {
          NotificationService()
              .showNotification(title: 'Patheern 1 yeni iş ilanı\n İstanbul konumunda tercihlerinizle eşleşen 1 yeni iş ilanı var.', body: 'It works!');
        },
      )),
    );
  }
}