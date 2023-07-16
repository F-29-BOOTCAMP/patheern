import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:patheern/authentication/textfield.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback onTap;

  const RegisterPage({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  Future<void> _register() async {
    try {
      if (_passwordController.text != _confirmPasswordController.text) {
        throw FirebaseAuthException(message: "Passwords do not match", code: '');
      }
      
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Optionally, if you want to automatically sign in the user after registering
      userCredential.user;

    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: widget.onTap,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PatheernTaskTextField(
              controller: _emailController,
              hintText: 'Email',
            ),
            PatheernTaskTextField(
              controller: _passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            PatheernTaskTextField(
              controller: _confirmPasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: _register,
              child: Text('Register'),
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
  // iphone143aWu (55:2641)
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
  // autogroupiwwmFsw (J8oD4xMe6pQ2Lf7rtAiWWM)
  left:  0*fem,
  top:  0*fem,
  child:  
Container(
  width:  390*fem,
  height:  730*fem,
  child:  
Stack(
  children:  [
Positioned(
  // autogroupenjbxXT (J8oBzKVLhjkgACGWezeNjb)
  left:  80*fem,
  top:  373*fem,
  child:  
Container(
  width:  230*fem,
  height:  40*fem,
  child:  
Stack(
  children:  [
Positioned(
  // line35tAD (55:2644)
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
  // vectorbqK (55:2645)
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
  // vectorKFX (55:2646)
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
  // emailS5F (55:2647)
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
  // autogroupmuxjuzR (J8oC9jPKmbGpCr5syUmUXj)
  left:  80*fem,
  top:  421*fem,
  child:  
Container(
  width:  227*fem,
  height:  40*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // vectorRhs (55:2648)
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
  // passwordkVF (55:2649)
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
  // groupfcD (55:2650)
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
  // line36ngq (55:2653)
  left:  82*fem,
  top:  461*fem,
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
  // autogroupsyuvi4h (J8oCKE7W7uQdqur5DWSyUV)
  left:  77*fem,
  top:  472*fem,
  child:  
Container(
  width:  230*fem,
  height:  77*fem,
  child:  
Stack(
  children:  [
Positioned(
  // remembermedhT (55:2654)
  left:  77*fem,
  top:  37*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  111*fem,
  height:  40*fem,
  child:  
Text(
  'Remember me',
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
  // rectangle8Lbs (55:2655)
  left:  48*fem,
  top:  47*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  20*fem,
  height:  18*fem,
  child:  
Container(
  decoration:  BoxDecoration (
    borderRadius:  BorderRadius.circular(5*fem),
    border:  Border.all(color Color(0xff007fff)),
  ),
),
),
),
),
Positioned(
  // line39Suo (55:2929)
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
  // vectoryeq (55:2930)
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
  // namehKw (55:2932)
  left:  45*fem,
  top:  0*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  45*fem,
  height:  40*fem,
  child:  
Text(
  'Name',
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
  // autogroupbfcdo85 (J8oCVPVEjtTvEHAsqtbfcD)
  left:  50*fem,
  top:  572*fem,
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
  'Sign in ',
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
  // forgotpasswordfAH (55:2657)
  left:  134*fem,
  top:  646*fem,
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
  // autogroup8zdfM37 (J8oBeQtqt4iXMXM31x8zDF)
  left:  34*fem,
  top:  71*fem,
  child:  
Container(
  width:  308*fem,
  height:  50*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // autogroupr5vbgLH (J8oBpf6mnWPVLJcfZsr5Vb)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
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
  // autogroupc3srMxD (J8oBszLZ8rzo4pRiVeC3SR)
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
  // autogroupcq41UX3 (J8oCboUDbDqUv4xVvncQ41)
  left:  22*fem,
  top:  682*fem,
  child:  
Container(
  width:  334*fem,
  height:  39*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.start,
  children:  [
Container(
  // rectangle1909Cxq (55:2934)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
  width:  20*fem,
  height:  18*fem,
  decoration:  BoxDecoration (
    borderRadius:  BorderRadius.circular(5*fem),
    border:  Border.all(color Color(0xff007fff)),
  ),
),
Container(
  // bysigningupyouagreetothetermso (55:2933)
  constraints:  BoxConstraints (
    maxWidth:  308*fem,
  ),
  child:  
Text(
  'By Signing up, you agree to the Terms of Service and Privacy Policy',
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
  ],
),
),
),
Positioned(
  // createnewaccountR4u (55:2640)
  left:  114*fem,
  top:  312*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  162*fem,
  height:  20*fem,
  child:  
Text(
  'Create New Account ',
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
),
),
Positioned(
  // rectangle1924Ws3 (73:2761)
  left:  112*fem,
  top:  187*fem,
  child:  
Align(
  child:  
SizedBox(
  width:  152*fem,
  height:  87*fem,
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
  // autogroupjvo3FJq (J8oCiP7b1USQngdmrmjvo3)
  left:  0*fem,
  top:  730*fem,
  child:  
Container(
  width:  508*fem,
  height:  20*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // line37BiH (55:2658)
  margin:  EdgeInsets.fromLTRB(0*fem, 5*fem, 15*fem, 0*fem),
  width:  175*fem,
  height:  1*fem,
  decoration:  BoxDecoration (
    color:  Color(0xff000000),
  ),
),
Container(
  // orcontinuewithjE1 (55:2660)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
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
  // line38erm (55:2659)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
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
  // autogroupfsmpbX7 (J8oCrDDsgcGaZVVSdvFSmP)
  left:  42*fem,
  top:  775*fem,
  child:  
Container(
  width:  304*fem,
  height:  50*fem,
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // lnJwK (55:2675)
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
  // googledih (55:2679)
  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 83*fem, 0*fem),
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
  // appleLt1 (55:2686)
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
  // darkmodefalsetypedefaultssw (55:2689)
  left:  14*fem,
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
  // leftsideCQR (55:2706)
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
  // rightsideKV3 (55:2690)
  child:  
Row(
  crossAxisAlignment:  CrossAxisAlignment.end,
  children:  [
Container(
  // autogroupgkuzt2M (J8oEdAGLRngKumrhgSgkUZ)
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
  // wifio9K (55:2695)
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
  // batteryvUq (55:2691)
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
menu
 
select
move
Home
Object
Size
Layout
Interactive
Group

group
Ungroup

ungroup

Group
Type


Preview


Layout


Export



Code
Dock



Settings
message.txt
13 KB
*/