import 'dart:async';
import 'package:flutter/material.dart';
import 'package:patheern/authentication/login_or_register_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      // Splash ekranı tamamlandıktan sonra yönlendirme yapılacak sayfaya geçiş yapılabilir.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginOrRegisterPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/patheern.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 16),
            //yükleme animasyonu veya metin eklenebilir
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text(
              'PATHEERN',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: Center(
        child: Text('Ana Sayfa'),
      ),
    );
  }
}
