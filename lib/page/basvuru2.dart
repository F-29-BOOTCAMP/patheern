import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Screen1(), //başvuru sayfasını çalıştırıyoruz
    );
  }
}

class Screen1 extends StatelessWidget {
  bool isFileUploaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 10, // AppBar'ın yükseklik ayarı
        backgroundColor: Color(0xFFFA5805),
        title: Text(
          'Başvurular',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        //sağ kısım -beğen kaydet paylaş-
        actions: [
          IconButton(
            icon: Icon(Icons.thumb_up_alt),
            onPressed: () {
              // like button action
            },
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () {
              // save button action
            },
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.share),
            color: Colors.white,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return MyPanel(); // Ayrı bir sayfa olarak MyPanel'ı açar
                },
              );
            },
          ),
        ],
      ),

      //body bölümü -kare ve metinler ve skill ve about ve apply...-
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // En üstteki dikdörtgen şirket kısmı
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      // This is the picture
                      SvgPicture.asset(
                        'assets/google.svg',
                        width: 80,
                        height: 80,
                      ),
                      // These are the 3 texts
                      SizedBox(height: 10.0),
                      Text(
                        'Veri Merkezi Teknisyeni Stajyeri',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center, // Metni ortala
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Google LLC',
                        style: TextStyle(
                          fontWeight: FontWeight.normal, // Metnin kalınlığı
                          color: Colors.blue, // Metnin rengi
                          fontSize: 20, // Metnin punto büyüklüğü
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                        indent: 32,
                        endIndent: 32,
                      ),

                      Text(
                        'Eemshaven, Hollanda',
                        style: TextStyle(
                          fontWeight: FontWeight.normal, // Metnin kalınlığı
                          color: Colors.black, // Metnin rengi
                          fontSize: 15, // Metnin punto büyüklüğü
                        ),
                      ),
                      SizedBox(width: 16, height: 10),

                      //şirketin çalışma şeklini gösteren baloncuklar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Full Time',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'In-Office',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '10 gün önce yüklendi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16, height: 16),

              //sağ sol kaydırma seçeneği olan iş tanımı- gerekli yetenek kısmı
              //iş tanımı ve gerekli yeteneklerle ilgili yazı kısmı
              ButtonListWidget(),

              //Diğer yazılar/ web sitesi vs
              SizedBox(width: 16, height: 30),

              //Web sitesine götürecek kısım- web sitesi butonu
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal:
                        80), // Sayfanın kenarlarından boşluk bırakmak için
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize:
                        Size(double.infinity, 50), // Uzunluğu ayarlamak için
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xFF0A426F),
                    shadowColor: Colors.black.withOpacity(0.7),
                    elevation: 7,
                  ),
                  onPressed: () {
                    // Butona tıklandığında yapılacak işlemler
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return MyPanel2(); // Ayrı bir sayfa olarak FileUploadPanel'i kullanın
                      },
                    );
                  },
                  child: Text(
                    'Web Sitesi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16, height: 16),
              //*
              //About-Apply Kısımları
              // */
              SizedBox(width: 16, height: 16),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0),
                  child: Column(
                    children: [
                      Text(
                        'Hakkında',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 16, height: 16),
                      Text(
                        'Google\'ın misyonu, dünyadaki bilgileri düzenlemek ve evrensel olarak erişilebilir ve kullanışlı hale getirmektir. Şirketin arama motoru, kullanıcılara webde hızlı ve verimli bir şekilde bilgi bulma yeteneği sağlayan en iyi bilinen ürünüdür. Google Arama, alakalı ve kişiselleştirilmiş arama sonuçları sunmak için karmaşık algoritmalar ve makine öğrenimi teknikleri kullanır.',
                        textAlign: TextAlign.center, // Metni ortala
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(width: 16, height: 30),

              //Apply butonu ve işlevleri
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal:
                        80), // Sayfanın kenarlarından boşluk bırakmak için
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize:
                        Size(double.infinity, 50), // Uzunluğu ayarlamak için
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xFF0A426F),
                    shadowColor: Colors.black.withOpacity(0.7),
                    elevation: 7,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return FileUploadPanel(); // Ayrı bir sayfa olarak FileUploadPanel'i kullanın
                      },
                    );
                  },
                  child: Text(
                    'Apply',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16, height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

//İş bilgileri seçme
class ButtonListWidget extends StatefulWidget {
  @override
  _ButtonListWidgetState createState() => _ButtonListWidgetState();
}

class _ButtonListWidgetState extends State<ButtonListWidget> {
  List<String> buttons = [
'İş/ Sponsorluk Hakkında ',
'Gerekli Nitelikler',
'Sorumluluklar',
];

  List<String> buttonExplainTexts = [
'Google, dünyanın en büyük teknoloji şirketlerinden biri olarak, hızla genişleyen veri merkezi altyapısının sürdürülebilirliğini sağlamak için Veri Merkezi Teknisyen Stajyerleri arıyor. Bu stajyerlik programı, veri merkezi operasyonlarına ilgi duyan, teknolojiye tutkulu ve öğrenmeye istekli bireyler için tasarlanmıştır. Veri Merkezi Teknisyen Stajyeri olarak, Googleın veri merkezi altyapısının işleyişi, bakımı ve sorun giderme süreçleri konusunda eğitim alacaksınız. Ayrıca, veri merkezi operasyonları için güvenlik protokollerini ve en iyi uygulamaları öğreneceksiniz.',
'Lise diploması veya eşdeğer eğitim niteliği. Bilgisayar donanımı, ağ ve veri merkezi kavramlarını temel düzeyde anlama. Güçlü problem çözme becerileri ve detaya dikkat etme. Hem bağımsız olarak hem de takım halinde etkili bir şekilde çalışabilme. Mükemmel iletişim ve insan ilişkileri becerileri. Ağır ekipmanları kaldırmayı içeren fiziksel olarak zorlayıcı bir ortamda çalışma isteği. Vardiyalarda ve gerektiğinde hafta sonlarında çalışmaya esneklik.',
'Veri merkezi ekipmanı ve sistemlerinin kurulumu, yapılandırılması ve test edilmesine yardımcı olma. Veri merkezinin optimal işleyişini sağlamak için rutin denetimler ve önleyici bakım görevlerini yerine getirme. Alarm ve uyarıları izleme ve hızlı bir şekilde sorunları tespit edip çözme. Donanım ve ağla ilgili sorunları gidermek için ekip ile işbirliği yapma. Güvenlik protokollerine uyma ve temiz ve düzenli bir çalışma ortamını koruma. Teknik prosedürleri ve olayları doğru bir şekilde belgeleme ve raporlama. Becerilerinizi geliştirmek için eğitim programlarına katılma ve ilgili sertifikaları edinme.',
];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: buttons.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color:
                            selectedIndex == index ? Colors.blue : Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Text(
                    buttons[index],
                    style: TextStyle(
                      color:
                          selectedIndex == index ? Colors.blue : Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 16),
        Text(
          '${buttons[selectedIndex]}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          textAlign: TextAlign.start, // Metni sola yasla
        ),
        SizedBox(height: 16),
        Text(
          '${buttonExplainTexts[selectedIndex]}',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

//Apply buton işlevi ve dosya yükleme
class FileUploadPanel extends StatefulWidget {
  @override
  _FileUploadPanelState createState() => _FileUploadPanelState();
}

class _FileUploadPanelState extends State<FileUploadPanel> {
  bool isFileUploaded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Başvur',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            '<Lütfen Dosyalarınızı Yükleyin>',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              color: Colors.black,
              thickness: 2.0,
            ),
          ),
          SizedBox(height: 20),
          isFileUploaded
              ? Icon(
                  Icons.check_circle,
                  size: 50,
                  color: Colors.green,
                )
              : IconButton(
                  icon: Icon(Icons.file_upload),
                  iconSize: 50,
                  onPressed: () {
                    setState(() {
                      isFileUploaded = true;
                    });
                    // Dosya yükleme işlemi burada gerçekleşir
                  },
                ),
        ],
      ),
    );
  }
}

//Share button işlevi
class MyPanel extends StatefulWidget {
  @override
  _MyPanelState createState() => _MyPanelState();
}

class _MyPanelState extends State<MyPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Paylaş',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              color: Colors.black,
              thickness: 2.0,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey[300],
                ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey[300],
                ),
            ],
          ),
        ],
      ),
    );
  }
}

//Web-Page button işlevi
class MyPanel2 extends StatefulWidget {
  @override
  _MyPanelState2 createState() => _MyPanelState2();
}

class _MyPanelState2 extends State<MyPanel2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.grey[200],
      child: Column(
        children: [
          SizedBox(height: 38),
          Text(
            'İş/Staj Bağlantı Linki:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              color: Colors.black,
              thickness: 2.0,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'https://oyunveuygulamaakademisi.com/',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
