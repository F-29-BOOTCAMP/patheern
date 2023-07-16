import 'package:flutter/material.dart';

class GeneralSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genel Ayarlar'),
        backgroundColor: Color(0xFFFA5805),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Dil Seçimi'),
            trailing: Icon(Icons.language),
            onTap: () {
              // Dil seçimi sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('Bildirim Ayarları'),
            trailing: Icon(Icons.notifications),
            onTap: () {
              // Bildirim ayarları sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('Tema Seçimi'),
            trailing: Icon(Icons.color_lens),
            onTap: () {
              // Tema seçimi sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('Ses Ayarları'),
            trailing: Icon(Icons.volume_up),
            onTap: () {
              // Ses ayarları sayfasına yönlendirme kodu
            },
          ),
        ],
      ),
    );
  }
}
