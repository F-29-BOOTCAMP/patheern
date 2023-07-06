import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Sayfası',
      theme: ThemeData(
        primarySwatch: createMaterialColor(Colors.white),
      ),
      home: ProfilePage(),
    );
  }

  createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 100).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });

    return MaterialColor(color.value, swatch);
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController aboutController = TextEditingController();
  FocusNode aboutFocusNode = FocusNode();

  List<String> skills = [];
  List<String> allSkills = [
    'Flutter',
    'Unity',
    'C++',
    'React',
    'Java',
  ];

  List<String> languages = [];
  List<String> allLanguages = [
    'İngilizce',
    'Almanca',
    'Fransızca',
    'İspanyolca',
    'Çince',
  ];

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  List<Experience> experiences = []     ;

  @override
  void dispose() {
    aboutController.dispose();
    aboutFocusNode.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Sayfası'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile_image.png'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'İsim Soyisim',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Meslek Başlığı',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.mail),
                    onPressed: () {
                      showContactDialog();
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Hakkımda',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(aboutFocusNode);
                },
                child: TextFormField(
                  controller: aboutController,
                  focusNode: aboutFocusNode,
                  decoration: InputDecoration(
                    hintText: 'Hakkımda',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: null,
                  onSaved: (value) {
                    // Hakkımda metnini kaydetmek için yapılacak işlemler
                  },
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Yetenekler',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: skills
                    .map(
                      (skill) => Chip(
                    label: Text(skill),
                    onDeleted: () {
                      setState(() {
                        skills.remove(skill);
                      });
                    },
                  ),
                )
                    .toList(),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showSkillsDialog();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ), backgroundColor: Color(0xFFFD5D2D),
                ),
                child: Text('Yetenek Seç'),
              ),
              SizedBox(height: 16),
              Text(
                'Diller',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: languages
                    .map(
                      (language) => Chip(
                    label: Text(language),
                    onDeleted: () {
                      setState(() {
                        languages.remove(language);
                      });
                    },
                  ),
                )
                    .toList(),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showLanguagesDialog();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ), backgroundColor: Color(0xFFFD5D2D),
                ),
                child: Text('Dil Ekle'),
              ),
              SizedBox(height: 16),
              Text(
                'Deneyimler',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.work),
                    title: Text(experiences[index].company),
                    subtitle: Text(
                      '${experiences[index].position}, ${experiences[index].date}',
                    ),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  showExperienceDialog();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ), backgroundColor: Color(0xFFFD5D2D),
                ),
                child: Text('Deneyim Ekle'),
              ),
              SizedBox(height: 1000),
            ],
          ),
        ),
      ),
    );
  }

  void showSkillsDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text('Yetenek Seç'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Yetenek',
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (value) {
                    setState(() {
                      if (!skills.contains(value)) {
                        skills.add(value);
                      }
                    });
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: skills.map(
                        (skill) => Chip(
                      label: Text(skill),
                      onDeleted: () {
                        setState(() {
                          skills.remove(skill);
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      backgroundColor: Colors.grey[300],
                      deleteIconColor: Colors.black,
                    ),
                  ).toList(),
                ),
                SizedBox(height: 8),
                ...allSkills.map(
                      (skill) => ListTile(
                    title: Text(skill),
                    onTap: () {
                      setState(() {
                        if (!skills.contains(skill)) {
                          skills.add(skill);
                        }
                      });
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  void showLanguagesDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text('Dil Seç'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Dil',
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (value) {
                    setState(() {
                      if (!languages.contains(value)) {
                        languages.add(value);
                      }
                    });
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 8),
                ...allLanguages.map(
                      (language) => ListTile(
                    title: Text(language),
                    onTap: () {
                      setState(() {
                        if (!languages.contains(language)) {
                          languages.add(language);
                        }
                      });
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showContactDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'İletişim Bilgileri',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'E-posta',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: 'Telefon',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(
                    labelText: 'Adres',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Kaydet butonuna basıldığında yapılacak işlemler
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ), backgroundColor: Color(0xFFFD5D2D),
                  ),
                  child: Text('Kaydet'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }



  void showExperienceDialog() {
    showDialog(
      context: context,
      builder: (context) {
        String company = '';
        String position = '';
        String date = '';

        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Deneyim Ekle',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Şirket',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    company = value;
                  },
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Pozisyon',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    position = value;
                  },
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Tarih',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    date = value;
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      experiences.add(Experience(
                        company: company,
                        position: position,
                        date: date,
                      ));
                    });
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ), backgroundColor: Color(0xFFFD5D2D),
                  ),
                  child: Text('Kaydet'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}



class Experience {
  final String company;
  final String position;
  final String date;

  Experience({
    required this.company,
    required this.position,
    required this.date,
  });
}