import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:blood_connect/screens/onboarding_one.dart';
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
      backgroundColor: Colors.red[500],
      body: Container(
        decoration: BoxDecoration(color: Colors.red[400]),
        child: AnimatedSplashScreen(
          duration: 2000,
          splash: Center(
            child: Container(
              child: Image.asset('assets/icon_splash.png'),
            ),
          ),
          splashTransition: SplashTransition.fadeTransition,
          nextScreen: OnBoarding(),
        ),
      ),
    );
  }
}
