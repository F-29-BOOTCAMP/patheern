import 'package:flutter/material.dart';

class AccountSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hesap Ayarları'),
        backgroundColor: Color(0xFFFA5805),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Profil Ayarları'),
            trailing: Icon(Icons.person),
            onTap: () {
              // Profil ayarları sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('Şifre Değiştir'),
            trailing: Icon(Icons.lock),
            onTap: () {
              // Şifre değiştirme sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('E-posta Değiştir'),
            trailing: Icon(Icons.email),
            onTap: () {
              // E-posta değiştirme sayfasına yönlendirme kodu
            },
          ),
          ListTile(
            title: Text('Hesabı Sil'),
            trailing: Icon(Icons.delete),
            onTap: () {
              // Hesap silme sayfasına yönlendirme kodu
            },
          ),
        ],
      ),
    );
  }
}
