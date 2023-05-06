import 'package:blood_connect/screens/onboarding_two.dart';
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
              Image.asset('assets/bro.png'),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Find Blood Donors',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Lorem Ipsum dolor sit amet \n consectetur adipiscing elit. Arcu \n tristique tristique quam in.'),
              const Card(
                color: Colors.red,
              ),
              Container(
                margin: const EdgeInsets.only(top: 240),
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Positioned(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (builder) => const OnBoardingTwo()),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
