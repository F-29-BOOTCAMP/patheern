import 'package:flutter/material.dart';
import 'package:patheern/Service/notifi_service.dart';

class NotificationBox_ extends StatefulWidget {
  const NotificationBox_({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  NotificationBox_State createState() => NotificationBox_State();
}

class NotificationBox_State extends State<NotificationBox_> {
  final NotificationService _notificationService = NotificationService();

  @override
  void initState() {
    super.initState();
    _notificationService.initNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFD7DC),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xFFFA5805),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF0A426F), // butonun rengi
            minimumSize: Size(200, 50), // butonun minimum boyutu
          ),
          child: Text(
            'Yeni Bildirim',
            style: TextStyle(
              fontSize: 20, // yazı boyutu
            ),
          ),
          onPressed: () {
            _notificationService.showNotification(
              title: 'Patheern 1 yeni iş ilanı',
              body:
                  'İstanbul konumunda tercihlerinizle eşleşen 1 yeni iş ilanı var.',
            );
          },
        ),
      ),
    );
  }
}
