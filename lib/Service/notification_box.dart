import 'package:flutter/material.dart';
import 'package:patheern/Service/notifi_service.dart';

class NotificationBox_ extends StatefulWidget {
  const NotificationBox_({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _NotificationBox_State createState() => _NotificationBox_State();
}

class _NotificationBox_State extends State<NotificationBox_> {
  final NotificationService _notificationService = NotificationService();

  @override
  void initState() {
    super.initState();
    _notificationService.initNotification();
  }

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
            _notificationService.showNotification(
              title: 'Patheern 1 yeni iş ilanı',
              body: 'İstanbul konumunda tercihlerinizle eşleşen 1 yeni iş ilanı var.',
            );
          },
        ),
      ),
    );
  }
}
