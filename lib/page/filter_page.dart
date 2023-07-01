import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool _isFilterApplied = false;
  List<String> _selectedOptions = [];

  List<String> _options = [
    'Seçenek 1',
    'Seçenek 2',
    'Seçenek 3',
    'Seçenek 4',
    'Seçenek 5',
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
                  title: Text(option),
                  value: _selectedOptions.contains(option),
                  onChanged: (value) {
                    _toggleOption(option);
                  },
                    activeColor: Color(0xFFFA5805),
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
                    child: Text('Filtrele'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFA5805),
                    ),
                  ),
                ),
                SizedBox(width: 12.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _clearFilters,
                    child: Text('Temizle'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
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
              child: Text(
                'Seçiilenler: ${_selectedOptions.join(", ")}',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
        ],
      ),
    );
  }
}
