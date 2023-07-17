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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage(
                        'assets/patheernlogo.png', //profil resmi
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vunay Yavaş',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Yazılım Geliştirici',
                        style: TextStyle(fontSize: 18.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              SizedBox(height: 16.0),
              Text(
                'İletişim Bilgileri',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.person),
                title: Text('Ad Soyad'),
                subtitle: Text('Vunay Yavaş'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.phone),
                title: Text('Telefon'),
                subtitle: Text('555-555-5555'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.email),
                title: Text('E-posta'),
                subtitle: Text('vunayesila@icloud.com'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.home),
                title: Text('Adres'),
                subtitle: Text('Sarıyer/İstanbul'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Hakkımda',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Merhaba, ben bir yazılım öğrencisiyim. Yeniliklere açık, motive olmuş ve çözüm odaklı bir yaklaşıma sahibim. Öğrenmeye ve kendimi geliştirmeye her zaman açığım. İyi bir takım oyuncusu olarak işbirliği yapmayı ve iletişim becerilerimi kullanmayı seviyorum. Hedefim, kaliteli ve yenilikçi yazılımlar üretmek. Yeni teknolojilere ve trendlere ilgi duyuyor, sürekli olarak kendimi geliştirme fırsatları arıyorum. Yazılım alanında büyümek ve başarıya ulaşmak için çalışıyorum.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'İş Deneyimi',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.work),
                title: Text('Stajyer Yazılım Geliştirici'),
                subtitle: Text('Oyun ve Uygulama Akademisi'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.work),
                title: Text('Stajyer Web Tasarımcısı'),
                subtitle: Text('Google'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.work),
                title: Text('Editor'),
                subtitle: Text('Halo Edebiyat Dergisi'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Eğitim',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.school),
                title: Text('İngiliz Dili ve Edebiyatı Bölümü'),
                subtitle: Text('Pamukkale Üniversitesi'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.school),
                title: Text('Lise'),
                subtitle: Text('ABC Anadolu Lisesi'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Yabancı Diller',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.language),
                title: Text('İngilizce'),
                subtitle: Text('İleri düzey'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.language),
                title: Text('Almanca'),
                subtitle: Text('Orta düzey'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Sertifikalar',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.star),
                title: Text('Flutter Sertifikası'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.star),
                title: Text('Web Tasarım Sertifikası'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.star),
                title: Text('Proje Yönetimi Sertifikası'),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Icon(Icons.star),
                title: Text('Metin Yazarlığı Sertifikası'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Rozetlerim',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Wrap(
                spacing: 8.0, // rozetler arasındaki yatay boşluk
                runSpacing: 8.0, // rozetler arasındaki dikey boşluk
                children: [
                  Image.asset('assets/rozet2.png', width: 80.0, height: 80.0),
                  Image.asset('assets/rozet4.png', width: 80.0, height: 80.0),
                  Image.asset('assets/rozet6.png', width: 80.0, height: 80.0),
                  Image.asset('assets/rozet7.png', width: 80.0, height: 80.0),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Beceriler',
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
                    label: Text('Liderlik'),
                  ),
                  Chip(
                    label: Text('Yazılı İletişim'),
                  ),
                  Chip(
                    label: Text('Proje Yönetimi'),
                  ),
                  Chip(
                    label: Text('Git'),
                  ),
                  Chip(
                    label: Text('Python'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'İlgi Alanları',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text('Mobil Uygulama Geliştirme'),
                  ),
                  Chip(
                    label: Text('Web Tasarım'),
                  ),
                  Chip(
                    label: Text('Metin Yazarlığı'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
