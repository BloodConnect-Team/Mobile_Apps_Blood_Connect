import 'package:blood_connect/color/color.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/getwidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 190,
        decoration: BoxDecoration(
          color: Colors.red[400],
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
        child: Expanded(
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Profile',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              //or 15.0
              child: Container(
                height: 90.0,
                width: 100.0,
                color: Colors.amber,
                child: Icon(Icons.person_2, color: Colors.white, size: 50.0),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
