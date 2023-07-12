import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color(0xFF0A426F),
        centerTitle: true,
        title: Text('Profil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 8.0,
                  ),
                ),
                child: Image.asset(
                  'assets/patheern.png', //profil resmi
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Vunay Yavaş',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Yazılım Geliştirici',
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            SizedBox(height: 16.0),
            Text(
              'Hakkımda',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Merhaba, ben bir yazılım öğrencisiyim. Yeniliklere açık, '
              'motive olmuş ve çözüm odaklı bir yaklaşıma sahibim. '
              'Öğrenmeye ve kendimi geliştirmeye her zaman açığım. İyi bir' 
              'takım oyuncusu olarak işbirliği yapmayı ve iletişim becerilerimi' 
              'kullanmayı seviyorum. Hedefim, kaliteli ve yenilikçi yazılımlar üretmek. ' 
              'Yeni teknolojilere ve trendlere ilgi duyuyor, sürekli olarak kendimi'
              'geliştirme fırsatları arıyorum. Yazılım alanında büyümek ve' 
              'başarıya ulaşmak için çalışıyorum.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Yetenekler',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Chip(
                  label: Text('Flutter'),
                ),
                Chip(
                  label: Text('Dart'),
                ),
                Chip(
                  label: Text('Firebase'),
                ),
                Chip(
                  label: Text('HTML'),
                ),
                Chip(
                  label: Text('CSS'),
                ),
                Chip(
                  label: Text('JavaScript'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
