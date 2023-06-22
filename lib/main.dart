import 'package:blood_connect/screens/onboarding_one.dart';
import 'package:blood_connect/screens/pages/login_screen.dart';
import 'package:blood_connect/screens/pages/register_screen.dart';
import 'package:blood_connect/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Connection',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: PageSatu(),
      home: const SplashScreen(),

      //
      initialRoute: '/',
      routes: {
        '/registerScreen': (context) => const RegisterScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/OnBoardingTwo': (context) => const OnboardingTwo(),
      },
    );
  }
}
