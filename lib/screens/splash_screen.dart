import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:blood_connect/color/color.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.redAccent,
            child: AnimatedSplashScreen(
              splash: const AnimateSplas(),
              nextScreen: const OnboardingOne(),
              splashTransition: SplashTransition.rotationTransition,
            ),
          ),
          Text(
            'Blood Connect',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w300, color: PrimaryColor),
          )
        ],
      ),
    );
  }
}
