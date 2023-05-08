import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/onboarding_two.dart';
import 'package:blood_connect/screens/second_screen.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/bro.png')),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Find Blood Donors',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Lorem ipsum dolor sit met'),
              const Text('consectetur adipicing elit.Arcu'),
              const Text('tristique tristieus quam'),
              SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Positioned(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (builder) => const SecondScreen()),
                        );
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
