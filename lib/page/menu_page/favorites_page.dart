import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoritesPages extends StatefulWidget {
  @override
  _FavoritesPagesState createState() => _FavoritesPagesState();
}

class _FavoritesPagesState extends State<FavoritesPages> {
  List<String> favorilerListesi = [
    'Öğe 1',
  ];

  void favoriOgeSil(int index) {
    setState(() {
      favorilerListesi.removeAt(index);
    });
  }

  void favoriOgeEkle(String yeniOge) {
    setState(() {
      favorilerListesi.add(yeniOge);
    });
  }

  void showEklemeDialog(BuildContext context) {
    String yeniOge = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Favori Öğe Ekle'),
          content: TextField(
            onChanged: (value) {
              yeniOge = value;
            },
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                favoriOgeEkle(yeniOge);
                Navigator.of(context).pop();
              },
              child: Text('Ekle'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFA5805),
        title: Text('Favoriler'),
      ),
      body: ListView.builder(
        itemCount: favorilerListesi.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(favorilerListesi[index]),
            direction: DismissDirection.horizontal,
            onDismissed: (direction) {
              setState(() {
                favoriOgeSil(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Öğe silindi.'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF0A426F),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/google.svg',
                      width: 32,
                      height: 32,
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    favorilerListesi[index],
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      favoriOgeSil(index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Öğe silindi.'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showEklemeDialog(context);
        },
        backgroundColor: Color(0xFFFA5805),
        child: Icon(Icons.add),
      ),
    );
  }
}
