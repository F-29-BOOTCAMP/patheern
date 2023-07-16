import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatefulWidget {
  @override
  _NotificationSettingsPageState createState() => _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool _receiveNotifications = true;
  bool _receiveEmails = false;
  bool _receiveSMS = true;
  bool _receivePushNotifications = true;

  void _toggleReceiveNotifications(bool value) {
    setState(() {
      _receiveNotifications = value;
    });
  }

  void _toggleReceiveEmails(bool value) {
    setState(() {
      _receiveEmails = value;
    });
  }

  void _toggleReceiveSMS(bool value) {
    setState(() {
      _receiveSMS = value;
    });
  }

  void _toggleReceivePushNotifications(bool value) {
    setState(() {
      _receivePushNotifications = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFA5805),
        title: Text('Bildirim Ayarları'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        children: [
          SwitchListTile(
            title: Text('Bildirimleri Al'),
            value: _receiveNotifications,
            onChanged: _toggleReceiveNotifications,
          ),
          Divider(),
          SwitchListTile(
            title: Text('E-posta Bildirimleri Al'),
            value: _receiveEmails,
            onChanged: _toggleReceiveEmails,
          ),
          Divider(),
          SwitchListTile(
            title: Text('SMS Bildirimleri Al'),
            value: _receiveSMS,
            onChanged: _toggleReceiveSMS,
          ),
          Divider(),
          SwitchListTile(
            title: Text('Push Bildirimleri Al'),
            value: _receivePushNotifications,
            onChanged: _toggleReceivePushNotifications,
          ),
        ],
      ),
    );
  }
}
