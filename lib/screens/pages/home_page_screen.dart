import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/providers/profile_provider.dart';
import 'package:blood_connect/screens/pages/mainpage/mobile_unit_screen.dart';
import 'package:blood_connect/screens/pages/mainpage/notification_screen.dart';
import 'package:blood_connect/screens/pages/mainpage/stok_darah_screen.dart';
import 'package:blood_connect/widgets/news_home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});


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
                        color: primaryColor,
                        image: const DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/img/style_splash.png")),
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20))),
                    child: SafeArea(
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  minRadius: 30,
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      AssetImage('assets/img/news.png'),
                                ),
                                const SizedBox(width: 20),
                                 Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Provider.of<ProfileProvider>(context).name ,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.white),
                                      ),
                                      Text(Provider.of<ProfileProvider>(context).goldar,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                NotificationScreen()));
                                  },
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Icon(
                                        Icons.notifications_none_outlined,
                                        color: primaryColor,
                                        size: 30,
                                      )),
                                )
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
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 170,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage("assets/img/homegambar.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const StokDarahScreen()));
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
                            const SizedBox(height: 8),
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
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) =>
                                    const MobileUnitScreen()));
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
                            const SizedBox(height: 8),
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Text(
                "Berita dan Artikel",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            const NewsHomePage(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Text(
                'Pertanyaan Umum',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(children: []),
            )
          ],
        ),
      ),
    );
  }
}

Widget _listFaq() {
  return CustomScrollView(
    slivers: [
      SliverList(delegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          height: 30,
          margin: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        );
      }))
    ],
  );
}
