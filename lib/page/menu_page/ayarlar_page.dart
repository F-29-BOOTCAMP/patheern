import 'package:flutter/material.dart';

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
            title: Text('Bildirimler'),
            trailing: Icon(Icons.notifications),
            onTap: () {
              // Bildirimler sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('Hesap Ayarları'),
            trailing: Icon(Icons.account_circle),
            onTap: () {
              // Hesap ayarları sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('Gizlilik'),
            trailing: Icon(Icons.security),
            onTap: () {
              // Gizlilik sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('Genel'),
            trailing: Icon(Icons.settings),
            onTap: () {
              // Genel ayarlar sayfasına yönlendirme kodu
            },
          ),
        ],
      ),
    );
  }
}
