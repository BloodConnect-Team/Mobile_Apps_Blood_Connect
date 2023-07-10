import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/providers/profile_provider.dart';
import 'package:blood_connect/screens/pages/account/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Column(children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(55.0), // Image radius
                  child: Image.network(
                      Provider.of<ProfileProvider>(context).photo,
                      fit: BoxFit.cover),
                ),
              ),
              Column(
                children: [
                  Text(
                    Provider.of<ProfileProvider>(context).name,
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    Provider.of<ProfileProvider>(context).goldar,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) => SettingScreen()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/icons/setting_icon.png'),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10)),
                        const Text(
                          'Pengaturan',
                          style: TextStyle(fontSize: 19, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    launchUrl(
                        Uri.parse(
                            'https://bloodconnect.social/kebijakan-privasi'),
                        mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/icons/privacy_icon.png'),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10)),
                        const Text(
                          'Kebijakan Privasi',
                          style: TextStyle(fontSize: 19, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    emailHelp();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/icons/help_icon.png'),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10)),
                        const Text(
                          'Butuh Bantuan',
                          style: TextStyle(fontSize: 19, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Provider.of<ProfileProvider>(context, listen: false)
                        .logout(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/icons/sigout_icon.png'),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10)),
                        const Text(
                          'Keluar',
                          style: TextStyle(fontSize: 19, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void emailHelp() async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailKontak = Uri(
        scheme: 'mailto',
        path: 'bloodConnect.social@gmail.com',
        query: encodeQueryParameters(<String, String>{
          'subject': 'Butuh Bantuan! Ketikkan Pesan Anda di bawah ini',
          'body': '... ',
        }));
    if (await canLaunchUrl(emailKontak) == false) {
      launchUrl(emailKontak);
    } else {
      throw Exception('email tidak ditemukan $emailKontak');
    }
  }
}
