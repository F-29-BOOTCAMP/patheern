/*
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      theme: ThemeData(),
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  List<Map<String, String>> _pages = [
    {
      'image': 'assets/1.png',
      'title': 'Patheern\'e Hoşgldin',
      'subtitle': 'İş hayatına kadarki tüm öğrencilik serüveninde yanındayız',
    },
    {
      'image': 'assets/2.png',
      'title': 'Kariyer Yolculuğunda İlerle!',
      'subtitle':
          'Hayallerine uzanan yolda staj, eğitim, konferans, geziler ve aradığın her şeyle senin için buradayız',
    },
    {
      'image': 'assets/3.png',
      'title': 'Hazırsan Başlayalım!',
      'subtitle': 'Yüzlerce yeni imkan ile gelişim yolculuğun başlasın',
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _goToNextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      // Son sayfadaysa, istediğiniz işlemi gerçekleştirebilir veya bir sonraki sayfaya geçebilirsiniz.
      print('Onboarding tamamlandı');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 235, 203),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    image: _pages[index]['image'] ?? '',
                    title: _pages[index]['title'] ?? '',
                    subtitle: _pages[index]['subtitle'] ?? '',
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) => _buildDot(index),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _goToNextPage,
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0A426F),
                onPrimary: Colors.white,
                minimumSize: Size(120, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      26), // İstediğiniz yuvarlatma değerini burada belirleyebilirsiniz
                ),
              ),
              child: Text(
                _currentPage == _pages.length - 1 ? 'Başla' : 'İleri',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: _currentPage == index ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Color(0xFFFA5805) : Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const OnboardingPage({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        SizedBox(height: 16.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8.0),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 18.0,
            color: Color.fromARGB(255, 58, 57, 57),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
*/


import 'package:flutter/material.dart';
import 'package:patheern/authentication/login_or_register_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      theme: ThemeData(),
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  List<Map<String, String>> _pages = [
    {
      'image': 'assets/1.png',
      'title': 'Patheern\'e Hoşgldin',
      'subtitle': 'İş hayatına kadarki tüm öğrencilik serüveninde yanındayız',
    },
    {
      'image': 'assets/2.png',
      'title': 'Kariyer Yolculuğunda İlerle!',
      'subtitle':
          'Hayallerine uzanan yolda staj, eğitim, konferans, geziler ve aradığın her şeyle senin için buradayız',
    },
    {
      'image': 'assets/3.png',
      'title': 'Hazırsan Başlayalım!',
      'subtitle': 'Yüzlerce yeni imkan ile gelişim yolculuğun başlasın',
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _goToNextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      // Son sayfadaysa, login veya kayıt sayfasına yönlendirme yapabilirsiniz
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginOrRegisterPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 235, 203),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    image: _pages[index]['image'] ?? '',
                    title: _pages[index]['title'] ?? '',
                    subtitle: _pages[index]['subtitle'] ?? '',
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) => _buildDot(index),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _goToNextPage,
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0A426F),
                onPrimary: Colors.white,
                minimumSize: Size(120, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
              child: Text(
                _currentPage == _pages.length - 1 ? 'Başla' : 'İleri',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: _currentPage == index ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Color(0xFFFA5805) : Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const OnboardingPage({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        SizedBox(height: 16.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8.0),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 18.0,
            color: Color.fromARGB(255, 58, 57, 57),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
