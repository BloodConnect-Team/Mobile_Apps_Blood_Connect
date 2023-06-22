import 'package:blood_connect/screens/pages/account/setting_screen.dart';
import 'package:flutter/material.dart';

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
              color: Colors.red[400],
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Expanded(
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
                Container(
                  width: 95,
                  height: 95,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Container(
                    height: 90,
                    width: 90,
                    child: Image.asset('assets/img/avatar.png'),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Fahim Eka',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '+O',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
              ]),
            ),
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
                  onTap: () {},
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
}
