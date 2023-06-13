import 'package:flutter/material.dart';

class StokDarahScreen extends StatelessWidget {
  const StokDarahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Stok Darah',
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(),
    );
  }
}
