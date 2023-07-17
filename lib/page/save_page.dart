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
//iş ilanları için listemiz

  List<JobOpportunity> jobOpportunities = [
    JobOpportunity(
      title: 'Erasmus',
      description: 'Learn Flutter Project',
      location: 'UK-London',
      date: '30.07.2023',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'ML Project',
      location: 'Germany-Berlin',
      date: '10.08.2023',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Learn Unity Project',
      location: 'UK-London',
      date: '12.09.2023',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Project Managment Project',
      location: 'Turkey-Ankara',
      date: '22.10.2023',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Web Development Project',
      location: 'Spain-Barcelona',
      date: '30.12.2024',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Data Analysis Project',
      location: 'France-Paris',
      date: '15.02.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Graphic Design Project',
      location: 'Italy-Rome',
      date: '05.04.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Mobile App Development Project',
      location: 'Netherlands-Amsterdam',
      date: '20.06.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Software Testing Project',
      location: 'Sweden-Stockholm',
      date: '10.08.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'UI/UX Design Project',
      location: 'Belgium-Brussels',
      date: '25.10.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Digital Marketing Project',
      location: 'Portugal-Lisbon',
      date: '12.12.2025',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Cybersecurity Project',
      location: 'Greece-Athens',
      date: '05.02.2026',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Artificial Intelligence Project',
      location: 'Denmark-Copenhagen',
      date: '20.04.2026',
    ),
    JobOpportunity(
      title: 'Erasmus',
      description: 'Blockchain Development Project',
      location: 'Switzerland-Zurich',
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

        // Boş appbar
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
                        hintText: 'Search opportunities',
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
                                image: AssetImage('assets/polonya.png'),
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
                                Text(
                                    'Location: ${jobOpportunities[i].location}'),
                                SizedBox(height: 8),
                                Text('Time: ${jobOpportunities[i].date}'),
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
