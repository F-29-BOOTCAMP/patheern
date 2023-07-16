import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gizlilik'),
        backgroundColor: Color(0xFFFA5805),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Veri Gizliliği Politikası'),
            trailing: Icon(Icons.privacy_tip),
            onTap: () {
              // Veri gizliliği politikası sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('Çerezler'),
            trailing: Icon(Icons.cookie),
            onTap: () {
              // Çerezler sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('Hesap Gizliliği'),
            trailing: Icon(Icons.lock),
            onTap: () {
              // Hesap gizliliği sayfasına yönlendirme kodu
            },
          ),
        ],
      ),
    );
  }
}
