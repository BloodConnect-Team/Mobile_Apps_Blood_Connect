import 'package:blood_connect/color/color.dart';
import 'package:flutter/material.dart';

class BloodScreen extends StatelessWidget {
  const BloodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: primaryColor,
          ),
        ],
      ),
    );
  }
}
