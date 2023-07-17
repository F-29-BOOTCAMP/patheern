import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Opportunities',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SavedPage(),
    );
  }
}

class JobOpportunity {
  String title;
  String description;
  String location;
  String date;
  bool isSaved;

  JobOpportunity({
    required this.title,
    required this.description,
    required this.location,
    required this.date,
    this.isSaved = false,
  });
}

class SavedPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SavedPage> {
//şehir resimleri için listemiz
  List<String> pngGorselListesi = [
    'assets/londra.png',
    'assets/berlin.png',
    'assets/polonya.png',
    'assets/ankara.png',
    'assets/barselona.png',
    'assets/paris.png',
    'assets/roma.png',
    'assets/amsterdam.png',
    'assets/stockholm.png',
    'assets/brüksel.png',
    'assets/lizbon.png',
    'assets/atina.png',
    'assets/kopenhag.png',
    'assets/zürih.png',
  ];

//iş ilanları için listemiz
  List<JobOpportunity> jobOpportunities = [
    JobOpportunity(
      title: 'Erasmus',
      description: 'Flutter ile İklim Değişikliği Çözümü',
      location: 'İngiltere-Londra',
      date: '30.07.2023',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Blockchain ile Modern Bankacılık Eğitimi Fırsatı',
      location: 'Almanya-Berlin',
      date: '10.08.2023',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Unity ile Sanat ve Teknoloji Buluşması',
      location: 'Polonya-Varşova',
      date: '12.09.2023',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Proje Yönetimi ile İş Dünyası Deneyimi',
      location: 'Türkiye-Ankara',
      date: '22.10.2023',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Web Geliştirme ile Sosyal Değişime Katkı',
      location: 'İspanya-Barselona',
      date: '30.12.2024',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Veri Analizi ile Sürdürülebilirlik Araştırmaları',
      location: 'Fransa-Paris',
      date: '15.02.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Grafik Tasarım ile Yaratıcı Endüstrilere Yolculuk',
      location: 'İtalya-Roma',
      date: '05.04.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Mobil Uygulama Geliştirme ile İnovasyon Serüveni',
      location: 'Hollanda-Amsterdam',
      date: '20.06.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Yazılım Test Etme ile Kalite Güvencesi Yolculuğu',
      location: 'İsveç-Stockholm',
      date: '10.08.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'UI/UX Tasarım ile Kullanıcı Deneyimi Yaratma',
      location: 'Belçika-Brüksel',
      date: '25.10.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Dijital Pazarlama ile Küresel Pazarlarda Büyüme',
      location: 'Portekiz-Lizbon',
      date: '12.12.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Bilgi Güvenliği ile Siber Güvenlik Yolculuğu',
      location: 'Yunanistan-Atina',
      date: '05.02.2026',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Yapay Zeka ile Geleceği Şekillendirme',
      location: 'Danimarka-Kopenhag',
      date: '20.04.2026',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Blockchain Geliştirme ile Dijital Dönüşüm Yolculuğu',
      location: 'İsviçre-Zürih',
      date: '10.06.2026',
    )
  ];

  void _toggleSaved(int index) {
    setState(() {
      jobOpportunities[index].isSaved = !jobOpportunities[index].isSaved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFA5805),
        title: Text('Kaydedilenler'), // AppBar'a başlık ekledik
        centerTitle: true, // Başlığı ortalamak için
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'İlanları arayın',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            for (int i = 0; i < jobOpportunities.length; i++)
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(pngGorselListesi[i]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  jobOpportunities[i].title,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(jobOpportunities[i].description),
                                SizedBox(height: 8),
                                Text('Şehir: ${jobOpportunities[i].location}'),
                                SizedBox(height: 8),
                                Text('Tarih: ${jobOpportunities[i].date}'),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _toggleSaved(i),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: jobOpportunities[i].isSaved
                                    ? Colors.orange
                                    : Colors.blue,
                              ),
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // İş ilanları arasındaki boşluk
                ],
              ),
          ],
        ),
      ),
    );
  }
}
