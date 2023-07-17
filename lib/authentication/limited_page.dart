import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patheern/authentication/login_page.dart';
import 'package:patheern/models/company.dart';
import 'package:patheern/page/filter_page.dart';
import 'package:patheern/page/job_detail.dart';
import 'package:patheern/widgets/company_card.dart';
import 'package:patheern/widgets/company_card2.dart';

class MyHomePage2 extends StatelessWidget {
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
              ),
            );
          },
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 18.0),
            ),
          ),
        ],
        title: Text(
          "PATHEERN",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25.0),
              Text(
                "Merhaba",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                              size: 25.0,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            hintText: "Fırsat Ara",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
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
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FilterPage(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.filter_list,
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              Text(
                "Stajlar",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
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
                    child: InkWell(
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
                      child: ListTile(
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
                        title: Text(
                          recent!.job!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                                "${recent.companyName} • ${recent.mainCriteria}"),
                          ],
                        ),
                        trailing: Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Color(0xFFFA5805),
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
