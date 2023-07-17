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
                        'Data Center Technician Apprentice',
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
                        'Eemshaven, Netherlands',
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
                          'Posted 10 days ago',
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
                    'Web Page',
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
                        'About',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 16, height: 16),
                      Text(
                        'Google\'s mission is to organize the world\'s information and make it universally accessible and useful. The company\'s search engine is its most well-known product, providing users with the ability to find information from across the web quickly and efficiently. Google Search utilizes complex algorithms and machine learning techniques to deliver relevant and personalized search results.',
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
    'About the Job/ Sponsorship',
    'Minimum Qualifications',
    'Responsibilities',
  ];

  List<String> buttonExplainTexts = [
    'Google, one of the worlds largest technology companies, is seeking Data Center Technician Apprentices to ensure the sustainability of its rapidly expanding data center infrastructure. This apprenticeship program is designed for individuals who are interested in data center operations, passionate about technology, and eager to learn. As a Data Center Technician Apprentice, you will receive training on the functioning, maintenance, and troubleshooting processes of Googles data center infrastructure. Additionally, you will gain knowledge about security protocols and best practices for data center operations. ',
    'High school diploma or equivalent educational qualification. Basic understanding of computer hardware, networking, and data center concepts. Strong problem-solving skills and attention to detail. Ability to work effectively both independently and in a team. Excellent communication and interpersonal skills. Willingness to work in a physically demanding environment, including lifting heavy equipment. Flexibility to work in shifts and weekends as required.',
    'Assisting with the installation, configuration, and testing of data center equipment and systems. Performing routine inspections and preventive maintenance tasks to ensure the optimal functioning of the data center. Monitoring and responding to alarms and alerts to identify and resolve issues promptly. Collaborating with the team to troubleshoot and resolve hardware and network-related problems. Adhering to safety protocols and maintaining a clean and organized working environment. Documenting and reporting technical procedures and incidents accurately. Participating in training programs and acquiring relevant certifications to enhance your skills.',
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
            'Apply',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            '<Please Upload Your Files>',
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
            'Share',
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
            'Job/ Sponsorship Link:',
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
