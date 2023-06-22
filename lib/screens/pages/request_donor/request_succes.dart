import 'package:flutter/material.dart';

class RequestSucces extends StatelessWidget {
  const RequestSucces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Container(
        child: Image.asset('assets/img/complete.png'),
      ),
    );
  }
}
