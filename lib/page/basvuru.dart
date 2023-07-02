import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Yukarıdaki 5 butonun olduğu appbar kısmı
      appBar: AppBar(
        backgroundColor: Colors.white,

        //sol kısım -sol ok ve skills-
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                // Geri butonu işlemi
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text('Skills'),
              onPressed: () {
                // Skills butonu işlemi
              },
            ),
          ],
        ),

        //sağ kısım -beğen kaydet paylaş-
        actions: [
          IconButton(
            icon: Icon(Icons.thumb_up_alt),
            color: Colors.orange,
            onPressed: () {
              // like button action
            },
          ),
          IconButton(
            icon: Icon(Icons.save),
            color: Colors.orange,
            onPressed: () {
              // save button action
            },
          ),
          IconButton(
            icon: Icon(Icons.share),
            color: Colors.orange,
            onPressed: () {
              // share button action
            },
          ),
        ],
      ),

      //body kısmı -kare ve metinler ve skill ve about ve apply...-
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            // En üstteki dikdörtgen karemsi şirket kısmı
            // This is the square frame with a rounded, hollow gray edge with some gaps around it
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
                    Image.asset('assets\google_g.png'),
                    SizedBox(width: 16, height: 16),
                    // These are the 3 texts
                    Text(
                      'Data Center Technician Apprentice',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Metnin kalınlığı (bold)
                        color: Colors.black, // Metnin rengi
                        fontSize: 20, // Metnin punto büyüklüğü (font size)
                      ),
                    ),
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
                    SizedBox(width: 16, height: 16),

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
                            'Full Time',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 50),
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
            //iş tanımı ve gerekli yeteneklerle ilgili yazı kısmı + diğer yazılar
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 15.0, left: 15.0, top: 15.0),
                child: Column(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'About the Job/ Sponsorship',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Metnin kalınlığı
                        color: Colors.black, // Metnin rengi
                        fontSize: 15, // Metnin punto büyüklüğü
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed risus non mi cursus iaculis sed euismod magna. Curabitur vel eros sagittis, dictum ex vel, dignissim mauris. Nunc pellentesque eros purus, nec mattis metus ultrices nec. Etiam sit amet fringilla enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in lorem laoreet, hendrerit purus eget, ultricies nulla. Suspendisse pellentesque tellus interdum justo pharetra, eu mollis purus convallis. Duis nec vestibulum eros. \n\n Nam hendrerit purus id finibus vestibulum. Mauris ligula massa, congue a magna vitae, viverra venenatis lorem. Cras quis dictum risus. Nullam a justo ac velit congue laoreet nec nec dolor. Duis egestas sem vitae purus lobortis convallis. Nunc consectetur et erat lacinia ultricies. Vivamus sed hendrerit lectus. Proin placerat, dolor ac luctus elementum, massa justo porttitor magna, nec elementum neque orci sit amet nibh. Nam nec felis et diam tincidunt mollis. Mauris neque libero, dapibus vitae tempus quis, ultrices ullamcorper sem. In facilisis luctus turpis, in fringilla est maximus vel. Duis eu condimentum lectus. Duis vel metus sit amet sem interdum ornare. Proin fringilla tincidunt sapien id fermentum. \n\nVestibulum a tortor quis nulla vestibulum ullamcorper. Integer maximus nunc sed massa pulvinar sollicitudin a at lorem. Fusce ornare gravida pulvinar. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec gravida est lacus, vitae rutrum velit interdum at. Mauris auctor, erat eget consectetur pretium, odio tortor aliquam nisi, vitae porta eros lorem id turpis. Nullam pulvinar, tellus sit amet blandit sodales, purus magna efficitur sapien, non ullamcorper erat massa non elit. In est nunc, mattis eget aliquam vel, vestibulum in ligula. Nulla consectetur ex lacus, quis porttitor ipsum fringilla eget. Pellentesque arcu lacus, laoreet vitae euismod eget, volutpat at orci. Suspendisse elementum ornare quam at sodales. Duis vel lorem sed neque pellentesque efficitur. Aenean eget ligula eu erat congue sodales.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal, // Metnin kalınlığı
                    color: Colors.black, // Metnin rengi
                    fontSize: 15, // Metnin punto büyüklüğü
                  ),
                ),
              ),
            ),
            SizedBox(width: 16, height: 16),

            Container(
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0),
                child: Column(
                  children: [
                    Text(
                      'Minimum Qualifications',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Metnin kalınlığı
                        color: Colors.black, // Metnin rengi
                        fontSize: 18, // Metnin punto büyüklüğü
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed risus non mi cursus iaculis sed euismod magna. Curabitur vel eros sagittis, dictum ex vel, dignissim mauris. Nunc pellentesque eros purus, nec mattis metus ultrices nec. Etiam sit amet fringilla enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in lorem laoreet, hendrerit purus eget, ultricies nulla. Suspendisse pellentesque tellus interdum justo pharetra, eu mollis purus convallis. Duis nec vestibulum eros. \n\n Nam hendrerit purus id finibus vestibulum. Mauris ligula massa, congue a magna vitae, viverra venenatis lorem. Cras quis dictum risus. Nullam a justo ac velit congue laoreet nec nec dolor. Duis egestas sem vitae purus lobortis convallis. Nunc consectetur et erat lacinia ultricies. Vivamus sed hendrerit lectus. Proin placerat, dolor ac luctus elementum, massa justo porttitor magna, nec elementum neque orci sit amet nibh. Nam nec felis et diam tincidunt mollis. Mauris neque libero, dapibus vitae tempus quis, ultrices ullamcorper sem. In facilisis luctus turpis, in fringilla est maximus vel. Duis eu condimentum lectus. Duis vel metus sit amet sem interdum ornare. Proin fringilla tincidunt sapien id fermentum. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Metnin kalınlığı
                        color: Colors.black, // Metnin rengi
                        fontSize: 15, // Metnin punto büyüklüğü
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 16, height: 16),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0),
                child: Column(
                  children: [
                    Text(
                      'Responsibilities',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal, // Metnin kalınlığı
                        color: Colors.black, // Metnin rengi
                        fontSize: 18, // Metnin punto büyüklüğü
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed risus non mi cursus iaculis sed euismod magna. Curabitur vel eros sagittis, dictum ex vel, dignissim mauris. Nunc pellentesque eros purus, nec mattis metus ultrices nec. Etiam sit amet fringilla enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in lorem laoreet, hendrerit purus eget, ultricies nulla. Suspendisse pellentesque tellus interdum justo pharetra, eu mollis purus convallis. Duis nec vestibulum eros. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal, // Metnin kalınlığı
                        color: Colors.black, // Metnin rengi
                        fontSize: 15, // Metnin punto büyüklüğü
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 16, height: 30),
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
                  backgroundColor: Colors.orange,
                  shadowColor: Colors.black.withOpacity(0.7),
                  elevation: 7,
                ),
                onPressed: () {
                  // Butona tıklandığında yapılacak işlemler
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
                        fontWeight: FontWeight.normal, // Metnin kalınlığı
                        color: Colors.black, // Metnin rengi
                        fontSize: 18, // Metnin punto büyüklüğü
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed risus non mi cursus iaculis sed euismod magna. Curabitur vel eros sagittis, dictum ex vel, dignissim mauris. Nunc pellentesque eros purus, nec mattis metus ultrices nec. Etiam sit amet fringilla enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in lorem laoreet, hendrerit purus eget, ultricies nulla. Suspendisse pellentesque tellus interdum justo pharetra, eu mollis purus convallis. Duis nec vestibulum eros. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal, // Metnin kalınlığı
                        color: Colors.black, // Metnin rengi
                        fontSize: 15, // Metnin punto büyüklüğü
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 16, height: 30),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal:
                      80), // Sayfanın kenarlarından boşluk bırakmak için
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize:
                      Size(double.infinity, 60), // Uzunluğu ayarlamak için
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blue,
                  shadowColor: Colors.black.withOpacity(0.7),
                  elevation: 7,
                ),
                onPressed: () {
                  // Butona tıklandığında yapılacak işlemler
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
    );
  }
}
