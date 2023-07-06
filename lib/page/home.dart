import 'dart:html';

import 'package:flutter/material.dart';
import 'package:f29_bootcamp_notification/service.dart';

class home extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _service = FirebaseNotificationService();
  @override 
  void initState() {
    super.initState();
    _service.connectNotification();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Notification"),
      ),
      body: Center(
        child: Text('Home'),
      );
    )
  }