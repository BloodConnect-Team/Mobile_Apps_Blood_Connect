import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/pages/login_screen.dart';
import 'package:blood_connect/screens/pages/register_screen.dart';
import 'package:flutter/material.dart';

class OnboardingTree extends StatelessWidget {
  const OnboardingTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(60),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                child: Image.asset('assets/img/icon_splash.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'BloodConnect',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Connected For Life',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    decorationColor: Colors.black),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                BorderSide(color: PrimaryColor, width: 3))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => LoginScreen()));
                        },
                        child: const Text('LOG IN'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: SizedBox(
                        width: 300,
                        child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: PrimaryColor),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return RegisterScreen();
                            }));
                          },
                          child: const Text('REGISTER'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
