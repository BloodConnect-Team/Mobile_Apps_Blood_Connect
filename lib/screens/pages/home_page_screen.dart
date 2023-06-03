import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/pages/menu/mobile_unit.dart';
import 'package:blood_connect/screens/pages/menu/stock_darah_screen.dart';
import 'package:blood_connect/widgets/List_Path_List.dart';
import 'package:blood_connect/widgets/news_home_page.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

// final widgetOptions = [ProfilDetailScreen(), BloodScreen(), SearchScreen()];

class _HomePageScreenState extends State<HomePageScreen> {
  void animationToStok() {
    Navigator.push(
        context, MaterialPageRoute(builder: (builder) => MobileUnit()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
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
                                const CircleAvatar(
                                  minRadius: 30,
                                  backgroundColor: Colors.white,
                                ),
                                const SizedBox(width: 20),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              fontSize: 14,
                                              color: Colors.white)),
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) =>
                                    const StockDarahScreen()));
                      },
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
                            const Column(
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
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const MobileUnit()));
                      },
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
                            const Column(
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
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        ),
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
            NewsHomePage(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Text(
                'FAQ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            _buildCard(context),
          ],
        ),
      ),
    );
  }
}

final List<Widget> _listCard = [];
Widget _buildCard(BuildContext) {
  return Card(
    elevation: 3,
    color: PrimaryColor,
    shape: Border.all(color: Colors.black),
  );
}
