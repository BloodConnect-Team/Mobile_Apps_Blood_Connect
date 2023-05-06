import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:blood_connect/screens/onboarding_one.dart';
import 'package:blood_connect/widgets/animate_splas.dart';
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
      backgroundColor: Colors.redAccent,
      body: AnimatedSplashScreen(
        splash: const AnimateSplas(),
        nextScreen: const OnBoarding(),
        splashTransition: SplashTransition.rotationTransition,
      ),
    );
  }
}
