import 'dart:math';
import 'package:blood_connect/color/color.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/getwidget.dart';

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
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
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
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/img/bro.png'),
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
          SizedBox(
            height: 30,
          ),
          Card(
            margin: EdgeInsets.all(10),
            elevation: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset('assets/icons/setting_icon.png'),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Text(
                    'Setting',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Card(
            margin: EdgeInsets.all(10),
            elevation: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset('assets/icons/privacy_icon.png'),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Card(
            margin: EdgeInsets.all(10),
            elevation: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset('assets/icons/help_icon.png'),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Text(
                    'Get Help',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          GestureDetector(
            onTap: () {},
            child: Card(
              margin: EdgeInsets.all(10),
              elevation: 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset('assets/icons/sigout_icon.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Text(
                      'Sign Out',
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
