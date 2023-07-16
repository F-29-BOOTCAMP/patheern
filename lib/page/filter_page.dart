import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool _isFilterApplied = false;
  List<String> _selectedOptions = [];

  List<String> _options = [
    'İstanbul',
    'Ankara',
    'İzmir',
    'Yazılım',
    'Muhasebe',
    'Sağlık',
    'Finans',
    'Staj Süresi',
    '20 Gün',
    '3 Ay',
    'Şirket Türü',
    'Startup',
    'Kamu',
    'Ücretli Staj',
    'Ücretsiz Staj',
    'Türkçe',
    'İngilizce',
    'Almanca',
    'Tarih',
    'Lisans',
    'Yüksek Lisans',
    'Doktora',
    'Uzaklık',
  ];

  void _applyFilters() {
    setState(() {
      _isFilterApplied = true;
    });
  }

  void _clearFilters() {
    setState(() {
      _isFilterApplied = false;
      _selectedOptions.clear();
    });
  }

  void _toggleOption(String option) {
    setState(() {
      if (_selectedOptions.contains(option)) {
        _selectedOptions.remove(option);
      } else {
        _selectedOptions.add(option);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A426F),
        centerTitle: true,
        title: Text('Filitre'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Filtreleme Seçenekleri',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: _options.length,
              itemBuilder: (context, index) {
                final option = _options[index];
                return CheckboxListTile(
                  title: Text(
                    option,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  value: _selectedOptions.contains(option),
                  onChanged: (value) {
                    _toggleOption(option);
                  },
                  activeColor: Color(0xFFFA5805),
                  controlAffinity: ListTileControlAffinity.leading,
                );
              },
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _applyFilters,
                    child: Text(
                      'Filtrele',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFA5805),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
                SizedBox(width: 12.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _clearFilters,
                    child: Text(
                      'Temizle',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          if (_isFilterApplied)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: _selectedOptions.map((option) {
                  return Chip(
                    label: Text(
                      option,
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    backgroundColor: Color(0xFFFA5805),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
