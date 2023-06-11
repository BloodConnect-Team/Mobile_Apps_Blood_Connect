import 'package:flutter/material.dart';

class MobileUnitScreen extends StatelessWidget {
  const MobileUnitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Mobile Unit',
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
