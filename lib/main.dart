import 'package:blood_connect/screens/onboarding_one.dart';
import 'package:blood_connect/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Connection',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const SplashScreen(),
      routes: {
        "onboardingOne": (context) => OnboardingOne(),
      },
    );
  }
}
