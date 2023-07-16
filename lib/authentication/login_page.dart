import 'package:patheern/views/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({Key? key, this.onTap}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final eMailController = TextEditingController();

  final passwordController = TextEditingController();

  void signUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: eMailController.text, password: passwordController.text);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>  MyHomePage()));
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(message),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;
    return Container(
      height: sHeight,
      width: sWidth,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Column(
          children: [
            TextFormField(
              controller: eMailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: signUserIn,
              child: const Text('Sign in'),
            ),
          ],
        ),
      ),
    );
  }
}

//sonradan ekle
/*

Container(
  // iphone1424aV (37:2939)
  width:  double.infinity,
  height:  844*fem,
  decoration:  BoxDecoration (
    color:  Color(0xfff3f3f3),
    borderRadius:  BorderRadius.circular(16*fem),
  ),
  child:  
Stack(
  children:  [
Positioned(
  // autogroupobxdkiD (J8oA28GcecHmiBHhz1oBxd)
  left:  0*fem,
  top:  0*fem,
  child:  
Container(
  width:  390*fem,
  height:  690*fem,
  child:  
Stack(
  children:  [
Positioned(
  // autogroupulfbTMj (J8o98QFoReErFoGbh7uLfB)
  left:  64*fem,
  top:  366*fem,
  child:  
Container(
  width:  230*fem,
  height:  40*fem,
  child:  
Stack(
  children:  [
Positioned(
  // line35nQ1 (55:2634)
  left:  0*fem,
  top:  37*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  230*fem,
  height:  1*fem,
  child:  
Container(
  decoration:  BoxDecoration (
    color:  Color(0xff000000),
  ),
),
),
),
),
Positioned(
  // vector5P7 (11:502)
  left:  0*fem,
  top:  17*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  24*fem,
  height:  6.01*fem,
  child:  
Image.network(
  [Image url]
  width:  24*fem,
  height:  6.01*fem,
),
),
),
),
Positioned(
  // vectorb6Z (11:501)
  left:  0*fem,
  top:  11*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  24*fem,
  height:  18*fem,
  child:  
Image.network(
  [Image url]
  width:  24*fem,
  height:  18*fem,
),
),
),
),
Positioned(
  // emailiS5 (11:503)
  left:  45*fem,
  top:  0*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  41*fem,
  height:  40*fem,
  child:  
Text(
  'Email',
  style:  SafeGoogleFont (
    'Inter',
    fontSize:  16*ffem,
    fontWeight:  FontWeight.w500,
    height:  2.5*ffem/fem,
    color:  Color(0xff585858),
  ),
),
),
),
),
  ],
),
),
),
Positioned(
  // line36bkm (55:2635)
  left:  67*fem,
  top:  465*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  227*fem,
  height:  1*fem,
  child:  
Container(
  decoration:  BoxDecoration (
    color:  Color(0xff000000),
  ),
),
),
),
),
Positioned(
  // autogroupaqbwiKb (J8o9HtyymxNfts2nw9aqbw)
  left:  67*fem,
  top:  422*fem,
  child:  
Container(
  width:  227*fem,
  height:  40*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // vector2bB (11:505)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
  width:  22*fem,
  height:  24*fem,
  child:  
Image.network(
  [Image url]
  width:  22*fem,
  height:  24*fem,
),
),
Container(
  // passwordY3j (11:504)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 103*fem, 0*fem),
  child:  
Text(
  'Password',
  style:  SafeGoogleFont (
    'Inter',
    fontSize:  16*ffem,
    fontWeight:  FontWeight.w500,
    height:  2.5*ffem/fem,
    color:  Color(0xff585858),
  ),
),
),
Container(
  // groupTgV (11:497)
  margin:  EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 0*fem),
  width:  24*fem,
  height:  18*fem,
  child:  
Image.network(
  [Image url]
  width:  24*fem,
  height:  18*fem,
),
),
  ],
),
),
),
Positioned(
  // autogroup3uq1nCy (J8o9ZUNMqmRKr4oJZu3UQ1)
  left:  43*fem,
  top:  574*fem,
  child:  
Container(
  width:  290*fem,
  height:  47*fem,
  decoration:  BoxDecoration (
    image:  DecorationImage (
      fit:  BoxFit.cover,
      image:  NetworkImage (
        [Image url]
      ),
    ),
  ),
  child:  
Center(
  child:  
Text(
  'Sign up ',
  style:  SafeGoogleFont (
    'Urbanist',
    fontSize:  32*ffem,
    fontWeight:  FontWeight.w700,
    height:  1.2000000477*ffem/fem,
    color:  Color(0xffffffff),
  ),
),
),
),
),
Positioned(
  // forgotpassword3Po (11:472)
  left:  130*fem,
  top:  642*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  130*fem,
  height:  19*fem,
  child:  
Text(
  'Forgot password?',
  textAlign:  TextAlign.center,
  style:  SafeGoogleFont (
    'Inter',
    fontSize:  15*ffem,
    fontWeight:  FontWeight.w600,
    height:  1.2125*ffem/fem,
    color:  Color(0xff246bfd),
  ),
),
),
),
),
Positioned(
  // autogroupsku1vyP (J8o9SE5S9qtwE9ZRFZSkU1)
  left:  110*fem,
  top:  508*fem,
  child:  
Container(
  width:  140*fem,
  height:  40*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // rectangle8fg5 (11:493)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 2*fem),
  width:  20*fem,
  height:  18*fem,
  decoration:  BoxDecoration (
    borderRadius:  BorderRadius.circular(5*fem),
    border:  Border.all(color Color(0xff007fff)),
  ),
),
Text(
  // remembermebZj (11:496)
  'Remember me',
  style:  SafeGoogleFont (
    'Inter',
    fontSize:  16*ffem,
    fontWeight:  FontWeight.w500,
    height:  2.5*ffem/fem,
    color:  Color(0xff000000),
  ),
),
  ],
),
),
),
Positioned(
  // autogrouptjfpM37 (J8o8ouncRmfJY9RAkKtjfP)
  left:  48*fem,
  top:  65*fem,
  child:  
Container(
  width:  308*fem,
  height:  50*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // autogroup73rbGfs (J8o8xjsEWQsfRuckc173RB)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
  width:  150*fem,
  height:  double.infinity,
  decoration:  BoxDecoration (
    color:  Color(0xffd9d9d9),
    borderRadius:  BorderRadius.circular(7*fem),
  ),
  child:  
Center(
  child:  
Text(
  'Register',
  textAlign:  TextAlign.center,
  style:  SafeGoogleFont (
    'Urbanist',
    fontSize:  20*ffem,
    fontWeight:  FontWeight.w700,
    height:  1.2*ffem/fem,
    color:  Color(0xff000000),
  ),
),
),
),
Container(
  // autogroupt1n1jZT (J8o92571rmUyARRoXmT1N1)
  width:  150*fem,
  height:  double.infinity,
  decoration:  BoxDecoration (
    color:  Color(0xfff2ab59),
    borderRadius:  BorderRadius.circular(7*fem),
  ),
  child:  
Center(
  child:  
Text(
  'Login',
  textAlign:  TextAlign.center,
  style:  SafeGoogleFont (
    'Urbanist',
    fontSize:  20*ffem,
    fontWeight:  FontWeight.w700,
    height:  1.2*ffem/fem,
    color:  Color(0xff000000),
  ),
),
),
),
  ],
),
),
),
Positioned(
  // logintoyouraccountQvV (55:2643)
  left:  96*fem,
  top:  305*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  170*fem,
  height:  40*fem,
  child:  
Text(
  'Login to Your Account',
  style:  SafeGoogleFont (
    'Inter',
    fontSize:  16*ffem,
    fontWeight:  FontWeight.w500,
    height:  2.5*ffem/fem,
    color:  Color(0xff000000),
  ),
),
),
),
),
Positioned(
  // rectangle19252S5 (73:2762)
  left:  89*fem,
  top:  182*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  205*fem,
  height:  108*fem,
  child:  
Container(
  decoration:  BoxDecoration (
    color:  Color(0xffd9d9d9),
  ),
),
),
),
),
  ],
),
),
),
Positioned(
  // autogroupb1eqLhf (J8o9fDhnRRsRnZ2KGSb1eq)
  left:  0*fem,
  top:  690*fem,
  child:  
Container(
  width:  493*fem,
  height:  20*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // line37eyF (55:2636)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 1*fem),
  width:  175*fem,
  height:  1*fem,
  decoration:  BoxDecoration (
    color:  Color(0xff000000),
  ),
),
Container(
  // orcontinuewithnZf (11:492)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
  child:  
Text(
  'or Continue with',
  textAlign:  TextAlign.center,
  style:  SafeGoogleFont (
    'Inter',
    fontSize:  16*ffem,
    fontWeight:  FontWeight.w400,
    height:  1.2125*ffem/fem,
    color:  Color(0xff000000),
  ),
),
),
Container(
  // line38t6u (55:2637)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
  width:  175*fem,
  height:  1*fem,
  decoration:  BoxDecoration (
    color:  Color(0xff000000),
  ),
),
  ],
),
),
),
Positioned(
  // autogroupevmopFT (J8o9o8eGP2KH9mpoy8evmo)
  left:  35*fem,
  top:  746*fem,
  child:  
Container(
  width:  306*fem,
  height:  50*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // ln8X3 (11:476)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 71.99*fem, 0*fem),
  width:  49.01*fem,
  height:  50*fem,
  child:  
Image.network(
  [Image url]
  width:  49.01*fem,
  height:  50*fem,
),
),
Container(
  // googleT3X (11:480)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 85*fem, 0*fem),
  width:  50*fem,
  height:  50*fem,
  child:  
Image.network(
  [Image url]
  width:  50*fem,
  height:  50*fem,
),
),
Container(
  // appleBER (11:487)
  width:  50*fem,
  height:  50*fem,
  child:  
Image.network(
  [Image url]
  width:  50*fem,
  height:  50*fem,
),
),
  ],
),
),
),
Positioned(
  // darkmodefalsetypedefaultKLd (55:2612)
  left:  21*fem,
  top:  8.0001220703*fem,
  child:  
Container(
  width:  339.33*fem,
  height:  25*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.start,
  children:  [
Container(
  // leftsideEyP (55:2629)
  margin:  EdgeInsets.fromLTRB(0*fem, 4*fem, 218.67*fem, 0*fem),
  width:  54*fem,
  height:  21*fem,
  child:  
Image.network(
  [Image url]
  width:  54*fem,
  height:  21*fem,
),
),
Container(
  // rightsideYUH (55:2613)
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.end,
  children:  [
Container(
  // autogroupuuzb6kh (J8oB8LvcSQd6AV6kkXUuZB)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 0.33*fem),
  width:  17*fem,
  height:  20.33*fem,
  child:  
Image.network(
  [Image url]
  width:  17*fem,
  height:  20.33*fem,
),
),
Container(
  // wifipRo (55:2618)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 0.37*fem),
  width:  15.27*fem,
  height:  10.97*fem,
  child:  
Image.network(
  [Image url]
  width:  15.27*fem,
  height:  10.97*fem,
),
),
Container(
  // batterywFX (55:2614)
  width:  24.33*fem,
  height:  11.33*fem,
  child:  
Image.network(
  [Image url]
  width:  24.33*fem,
  height:  11.33*fem,
),
),
  ],
),
),
  ],
),
),
),
  ],
),
),

*/