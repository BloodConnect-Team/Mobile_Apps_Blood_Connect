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
                                ClipOval(
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(30.0), // Image radius
                                    child: Image.network(
                                        Provider.of<ProfileProvider>(context)
                                            .photo,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Provider.of<ProfileProvider>(context)
                                            .name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.white),
                                      ),
                                      Text(
                                          Provider.of<ProfileProvider>(context)
                                              .goldar,
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
                      margin: EdgeInsets.all(20.0),
                      height: 140,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage("assets/img/gambar.png"),
                            fit: BoxFit.fitWidth,
                          ),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Text(
                "Berita dan Artikel",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20.0), child: NewsHomePage()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                'Pertanyaan Umum',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    width: MediaQuery.of(context).size.width,
                    color: primaryColor,
                    child: ExpansionTile(
                      title: Text(
                        'Mengapa Kita Harus Bayar Ketika kita Butuh Darah Dari PMI ?',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                      children: [
                        ColoredBox(
                          color: Colors.white,
                          child: ListTile(
                            title: Text(
                                'Biaya yang kita keluarkan perkantong darah sebenarnya adalah biaya penggantian pemeliharaan darah, supaya kondisinya tetap sama seperti saat berada dalam tubuh kita.'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    width: MediaQuery.of(context).size.width,
                    color: primaryColor,
                    child: ExpansionTile(
                      title: Text(
                        'Mengapa Kita Perlu Donor Darah ?',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                      children: [
                        ColoredBox(
                          color: Colors.white,
                          child: ListTile(
                            title: Text(
                                'Rajin mendonorkan darah kira-kira mampu menurunkan risiko serangan jantung hingga 88 persen. Tak hanya itu, mendonorkan darah juga bisa meminimalkan risiko kanker, stroke, dan serangan jantung. Menariknya lagi, manfaat donor darah juga bisa membuat kadar zat besi dalam darah jadi stabil.'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    width: MediaQuery.of(context).size.width,
                    color: primaryColor,
                    child: ExpansionTile(
                      title: Text(
                        'Kenapa Kita Membutuhkan Darah Prosesnya Lama ?',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                      children: [
                        ColoredBox(
                          color: Colors.white,
                          child: ListTile(
                            title: Text(
                                'Secara umum, proses transfusi darah dapat berlangsung selama 1 sampai 4  jam, atau bisa lebih cepat. Tahap-tahap yang dilakukan oleh dokter pada proses transfusi darah antara lain: Meminta pasien untuk berbaring di tempat tidur'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    width: MediaQuery.of(context).size.width,
                    color: primaryColor,
                    child: ExpansionTile(
                      title: Text(
                        'Apa yang harus kita persiapkan Sebelum Donor ?',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                      children: [
                        ColoredBox(
                          color: Colors.white,
                          child: ListTile(
                            title: Text(
                                "Berat badan minimal 45 kilogram.Tekanan darah di atas 90/50 dan di bawah 180/100.Suhu tubuh antara 36,6-37,5 derajat Celsius.Tidak boleh dalam kondisi hamil.Hemoglobin wanita minimal 12 gram% dan pria minimal 13 gram%."),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
