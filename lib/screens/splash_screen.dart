import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 33, 86),
      body: Center(
        child: Container(
            width: 200,
            height: 100,
            child: Image.asset('assets/icon_splash.png')),
      ),
    );
  }
}
