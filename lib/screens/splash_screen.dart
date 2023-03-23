import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 235, 15, 70),
          Color.fromARGB(255, 235, 15, 70),
        ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        child: Column(
          children: [
            SizedBox(
              height: size.height / 50,
            ),
            Container(
              height: size.height / 1.29,
              width: size.width / 1.2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/icon_splash.png"))),
            )
          ],
        ),
      ),
    );
  }
}
