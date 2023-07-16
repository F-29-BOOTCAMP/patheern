
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _aramaKelimesi = '';
  List<String> _secilenFiltreler = [];
  bool _isDropdownOpen = false;

  void _aramaYap(String kelime) {
    setState(() {
      _aramaKelimesi = kelime;
    });
  }

  void _secilenFiltreleriGuncelle(String filtre) {
    setState(() {
      if (_secilenFiltreler.contains(filtre)) {
        _secilenFiltreler.remove(filtre);
      } else {
        _secilenFiltreler.add(filtre);
      }
    });
  }

  void _toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFA5805),
        title: Text('Arama Yap'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50.0,
                    child: TextField(
                      onChanged: (value) {
                        _aramaYap(value);
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        labelText: 'Staj Ara',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide:
                              BorderSide(color: Color(0xEB9E9E9E), width: 2.0),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: _toggleDropdown,
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 12.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _isDropdownOpen
                ? DropdownButtonFormField<String>(
                    items: [
                      DropdownMenuItem(
                        child: Text('İstanbul'),
                        value: 'İstanbul',
                      ),
                      DropdownMenuItem(
                        child: Text('Ankara'),
                        value: 'Ankara',
                      ),
                      DropdownMenuItem(
                        child: Text('Yazılım'),
                        value: 'Yazılım',
                      ),
                      DropdownMenuItem(
                        child: Text('Sağlık'),
                        value: 'Sağlık',
                      ),
                      DropdownMenuItem(
                        child: Text('Finans'),
                        value: 'Finans',
                      ),
                      DropdownMenuItem(
                        child: Text('Staj Süresi'),
                        value: 'Staj Süresi',
                      ),
                      DropdownMenuItem(
                        child: Text('20 Gün'),
                        value: '20 Gün',
                      ),
                      DropdownMenuItem(
                        child: Text('3 Ay'),
                        value: '3 Ay',
                      ),
                      DropdownMenuItem(
                        child: Text('Startup'),
                        value: 'Startup',
                      ),
                      DropdownMenuItem(
                        child: Text('Kamu'),
                        value: 'Kamu',
                      ),
                      DropdownMenuItem(
                        child: Text('Ücretli Staj'),
                        value: 'Ücretli Staj',
                      ),
                      DropdownMenuItem(
                        child: Text('Ücretsiz Staj'),
                        value: 'Ücretsiz Staj',
                      ),
                      DropdownMenuItem(
                        child: Text('Türkçe'),
                        value: 'Türkçe',
                      ),
                      DropdownMenuItem(
                        child: Text('İngilizce'),
                        value: 'İngilizce',
                      ),
                      DropdownMenuItem(
                        child: Text('Lisans'),
                        value: 'Lisans',
                      ),
                      DropdownMenuItem(
                        child: Text('Yüksek Lisans'),
                        value: 'Yüksek Lisans',
                      ),
                      DropdownMenuItem(
                        child: Text('Doktora'),
                        value: 'Doktora',
                      ),
                    ],
                    onChanged: (value) {
                      _secilenFiltreleriGuncelle(value!);
                    },
                    onSaved: (value) {
                      _secilenFiltreleriGuncelle(value!);
                    },
                    decoration: InputDecoration(
                      labelText: 'Filtreler',
                      border: OutlineInputBorder(),
                    ),
                  )
                : SizedBox.shrink(),
            SizedBox(height: 2.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var filtre in _secilenFiltreler)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Chip(
                        label: Text(filtre),
                        deleteIcon: Icon(Icons.close),
                        onDeleted: () {
                          _secilenFiltreleriGuncelle(filtre);
                        },
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

