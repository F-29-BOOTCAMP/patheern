import 'package:flutter/material.dart';

class FavoritesPages extends StatelessWidget {
  final List<String> favorilerListesi = [
    'Öğe 1',
    'Öğe 2',
    'Öğe 3',
    'Öğe 4',
    'Öğe 5',
    'Öğe 6',
    'Öğe 7',
    'Öğe 8',
  ];

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
          return Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Color(0xFF0A426F),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              favorilerListesi[index],
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
