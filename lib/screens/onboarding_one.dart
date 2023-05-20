import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/onboarding_two.dart';
import 'package:flutter/material.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
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
                    child: Image.asset('assets/img/bro.png')),
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
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ],
              ),
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
                              builder: (builder) => const OnboardingTwo()),
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
