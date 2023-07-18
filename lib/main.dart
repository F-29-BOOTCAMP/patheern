import 'package:patheern/authentication/login_or_register_page.dart';
import 'package:patheern/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:patheern/authentication/auth_page.dart';
import 'package:patheern/authentication/login_page.dart';
import 'package:patheern/authentication/register_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patheern/splash_screen.dart';

Future<void> main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patheern',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
