import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/pages/menu/blood_screen.dart';
import 'package:blood_connect/screens/pages/menu/profile_screen.dart';
import 'package:blood_connect/screens/pages/menu/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

// final widgetOptions = [ProfilDetailScreen(), BloodScreen(), SearchScreen()];

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedBottom = 0;

  final List<Widget> _listPage = [
    BloodScreen(),
    ProfileScreen(),
    SearchScreen()
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedBottom = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 305,
            child: Stack(
              children: [
                Container(
                  height: 245,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: PrimaryColor,
                      image: DecorationImage(
                          alignment: Alignment.topCenter,
                          image: AssetImage("assets/img/style_splash.png")),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20))),
                  child: SafeArea(
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                minRadius: 30,
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sukma Rizki",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                    Text("O+",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white)),
                                  ],
                                ),
                              ),
                              Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Icon(
                                    Icons.notifications_none_outlined,
                                    color: PrimaryColor,
                                    size: 30,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 170,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/img/home.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: 57,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/img/icon2.png",
                          height: 50,
                        ),
                        SizedBox(height: 8),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Stok Darah",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Kota Lhokseumawe",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 57,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/img/icon3.png",
                          height: 50,
                        ),
                        SizedBox(height: 8),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mobile Unit",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Jadwal Hari Ini",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: Text(
              "NEWS",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 15,
                    child: Container(
                      width: 200,
                      height: 150,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/img/news.png'),
                          Text(
                            'UTD PMI Kota Medan',
                            style:
                                TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                          ),
                          Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  //container kedua
                  Card(
                    elevation: 15,
                    shadowColor: Colors.grey,
                    child: Container(
                      width: 200,
                      height: 150,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/img/news.png'),
                          Text(
                            'UTD PMI Kota Medan',
                            style:
                                TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                          ),
                          Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                  ),
                  //Container ketiga
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Card(
                    elevation: 15,
                    shadowColor: Colors.blueGrey,
                    child: Container(
                      width: 200,
                      height: 150,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/img/news.png'),
                          Text(
                            'UTD PMI Kota Medan',
                            style:
                                TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                          ),
                          Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
            child: Text(
              'FAQ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),

        Card(
          child: Container(
            decoration: BoxDecoration(border: Border.symmetric(vertical: )),
          ),
        )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(
          color: Colors.blueGrey,
        ),
        unselectedItemColor: Colors.grey,
        iconSize: 25,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bloodtype), label: "Blood"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: "Profil")
        ],
        selectedItemColor: PrimaryColor,
        onTap: onItemTap,
        currentIndex: _selectedBottom,
        showUnselectedLabels: false,
      ),
    );
  }
}
