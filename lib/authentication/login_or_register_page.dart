import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:patheern/authentication/limited_page.dart';
import 'login_page.dart';
import 'register_page.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return LoginOrRegisterPage();
  }
}

class LoginOrRegisterPage extends StatelessWidget {
  const LoginOrRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD2D2D2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/patheern.png', //logo
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Hadi Başlayalım',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFA5805),
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15), 
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text(
                'Oturum Aç',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFA5805),
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                );
              },
              child: Text(
                'Kayıt Ol',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFA5805),
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage2( // belirli özelliklere erişim
                      
                    ),
                  ),
                );
              },
              child: Text(
                'Göz At',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
