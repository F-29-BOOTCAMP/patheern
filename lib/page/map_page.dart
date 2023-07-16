import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boş Sayfa'),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Bu bir boş sayfadır.',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}


// Harita kısmını ayarlayınca EmptyPage değiştirirsen home.dart dosyasında 62. satırı değiştir