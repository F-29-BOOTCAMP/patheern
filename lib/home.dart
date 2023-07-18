import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:patheern/authentication/login_page.dart';
import 'package:patheern/models/company.dart';
import 'package:patheern/page/basvuru2.dart';
import 'package:patheern/views/constants.dart';
import 'package:patheern/widgets/company_card.dart';
import 'package:patheern/widgets/company_card2.dart';
import 'package:patheern/page/profile_page.dart';
import 'package:patheern/page/filter_page.dart';
import 'package:patheern/page/profile.dart';
import '../page/job_detail.dart';
import 'package:patheern/page/save_page.dart';
import 'package:patheern/page/search_page.dart';
import 'package:patheern/page/menu_page/settings_page.dart';
import 'package:patheern/page/menu_page/basvuru.dart';
import 'package:patheern/page/menu_page/notification_page.dart';
import 'package:patheern/page/menu_page/favorites_page.dart';
import 'package:patheern/page/map_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0: // Ana Sayfa öğesi
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(), // Ana Sayfa'ya yönlendirme
            ),
          );
          break;
        case 1: // Kaydedilenler öğesi
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  SavedPage(), // Kaydedilenler sayfasına yönlendirme
            ),
          );
          break;
        case 2: // Harita öğesi
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EmptyPage(), // Harita sayfasına yönlendirme
            ),
          );
          break;
        case 3: // Ara öğesi
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchPage(), // Ara sayfasına yönlendirme
            ),
          );
          break;

        case 4: // Profil öğesi
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ProfilePages(), // Profil sayfasına yönlendirme
            ),
          );
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFD7DC),
      appBar: AppBar(
        backgroundColor: Color(0xFFFA5805),
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  top: 12.0,
                  bottom: 12.0,
                  right: 12.0,
                ),
                child: SvgPicture.asset(
                  "assets/drawer.svg",
                  color: kBlack,
                ),
              ),
            );
          },
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProfilePage(), 
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: SvgPicture.asset(
                "assets/user.svg",
                width: 25.0,
                color: kBlack,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFA5805),
              ),
              child: Text(
                'Menü',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favoriler'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritesPages()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.paste_rounded),
              title: Text('Başvurular'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen1()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Bildirimler'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BildirimSayfasi()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ayarlar'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AyarlarPage()),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('Çıkış'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25.0),
              Text(
                "Merhaba, Vunay",
                style: kPageTitleStyle,
              ),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 50.0,
                margin: EdgeInsets.only(right: 18.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Color(0xBC9E9E9E),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: TextField(
                          cursorColor: kBlack,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                              size: 25.0,
                              color: kBlack,
                            ),
                            border: InputBorder.none,
                            hintText: "Fırsat Ara",
                            hintStyle: kSubtitleStyle.copyWith(
                              color: const Color.fromARGB(97, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin: EdgeInsets.only(left: 12.0),
                      decoration: BoxDecoration(
                        color: kBlack,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FilterPage(), 
                            ),
                          );
                        },
                        child: Icon(
                          FontAwesomeIcons.slidersH,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "En Popüler",
                style: kTitleStyle,
              ),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 190.0,
                child: ListView.builder(
                  itemCount: companyList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var company = companyList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JobDetail(
                              company: company,
                            ),
                          ),
                        );
                      },
                      child: index == 0
                          ? CompanyCard(company: company)
                          : CompanyCard2(company: company),
                    );
                  },
                ),
              ),
              SizedBox(height: 35.0),
              Text("Stajlar", style: kTitleStyle),
              ListView.builder(
                itemCount: recentList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  var recent = recentList[index];

                  return Card(
                    elevation: 0.0,
                    margin: EdgeInsets.only(right: 18.0, top: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JobDetail(
                              company: recent,
                            ),
                          ),
                        );
                      },
                      leading: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                            image: AssetImage(recent!.image!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(recent!.job!, style: kTitleStyle),
                      subtitle: Row(
                        children: [
                          Text(
                              "${recent.companyName} • ${recent.mainCriteria}"),
                        ],
                      ),
                      trailing: Icon(
                        Icons.more_vert,
                        color: kBlack,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 35.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Color(0xFF0A426F), 
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks),
              label: 'Kaydedilenler',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Haritalar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Ara',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromRGBO(250, 88, 5, 1),
          unselectedItemColor: Color(0xFFF2EEEB),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
