import 'package:flutter/material.dart';
import 'package:patheern/page/menu_page/settings_page/account_settings_page.dart';
import 'package:patheern/page/menu_page/settings_page/general_settings_page.dart';
import 'package:patheern/page/menu_page/settings_page/notification_settings_page.dart';
import 'package:patheern/page/menu_page/settings_page/privacy_page.dart';

class AyarlarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
        backgroundColor: Color(0xFFFA5805),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Bildirim Ayarları'),
            trailing: Icon(Icons.notifications),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationSettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Hesap Ayarları'),
            trailing: Icon(Icons.account_circle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AccountSettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Gizlilik'),
            trailing: Icon(Icons.security),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrivacyPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Genel'),
            trailing: Icon(Icons.settings),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GeneralSettingsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
