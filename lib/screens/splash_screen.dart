import 'dart:async';
import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/onboarding_one.dart';
import 'package:blood_connect/screens/pages/bottomnav/bottom_navigation.dart';
import 'package:blood_connect/screens/pages/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  String? token;

  late final AnimationController _controlAnimasi = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controlAnimasi,
    curve: Curves.fastOutSlowIn,
  );
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    openSplashScreen();
    super.initState();
  }

  openSplashScreen() async {
    final _prefs = await SharedPreferences.getInstance();
    token = _prefs.getString('token-auth');
    var durasiSplash = const Duration(seconds: 2);
    return Timer(durasiSplash, () {
      if (token != null) {
        print("TOKEN AUTHORIZATION : " + token!);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (builder) => BottomNavigation()));
      } else {
        print("gagal");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (buider) => OnboardingOne()));
      }
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);

    _controlAnimasi.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: primaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150.0,
            ),
            Center(
              child: SizeTransition(
                sizeFactor: _animation,
                axis: Axis.horizontal,
                axisAlignment: -1,
                child: Image.asset('assets/img/icon_splash.png'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Blood Connect',
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 25, color: Colors.white),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/img/style_splash.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
