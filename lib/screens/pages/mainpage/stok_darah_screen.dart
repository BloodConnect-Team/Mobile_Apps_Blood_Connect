import 'package:flutter/material.dart';

class StokDarahScreen extends StatelessWidget {
  const StokDarahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Center(
          child: Text(
            'Stok Darah',
            style: TextStyle(fontSize: 17, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
