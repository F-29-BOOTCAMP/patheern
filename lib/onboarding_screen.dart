import 'package:flutter/material.dart';
import 'package:patheern/authentication/login_or_register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _pages = [
    _createPage(
      title: '',
      description: 'İş hayatına kadarki tüm öğrencilik serüveninde yanındayız',
      image: 'assets/onboarding_1..png',
    ),
    _createPage(
      title: 'Kariyer Yolculuğunda İlerle!',
      description: 'Hayallerine uzanan yolda staj, eğitim, konferans, geziler ve aradığın her şeyle senin için buradayız',
      image: 'assets/onboarding_2..png',
    ),
    _createPage(
      title: 'Last but not least',
      description: 'Everything you need to know about our app',
      image: 'assets/onboarding_3..png',
    ),
  ];

  static Widget _createPage(
      {String? title, String? description, String? image}) {
    return Container(
      margin: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image ?? '', height: 200, width: 200),
          SizedBox(height: 30),
          Text(title ?? '',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text(description ?? '',
              style: TextStyle(fontSize: 22), textAlign: TextAlign.center),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
      ),
      bottomSheet: _currentPage == _pages.length - 1
          ? Container(
              height: 60,
              width: double.infinity,
              color: Colors.blue,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginOrRegisterPage()),
                  );
                },
                child: Center(
                  child: Text(
                    'Hadi Başlayalım',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(_pages.length, (int index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 10,
                  width: (index == _currentPage) ? 30 : 10,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: (index == _currentPage)
                        ? Colors.blue
                        : Colors.blue.withOpacity(0.5),
                  ),
                );
              }),
            ),
    );
  }
}
