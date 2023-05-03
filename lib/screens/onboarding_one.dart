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
      appBar: AppBar(
        title: Text('onboarding'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text('Find Blood Donors'),
              SizedBox(
                height: 30,
              ),
              Text(
                  'Lorem Ipsum dolor sit amet \n consectetur adipiscing elit. Arcu \n tristique tristique quam in.'),
              Container(
                margin: EdgeInsets.only(top: 400),
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Positioned(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (builder) => OnBoardingTwo()),
                          );
                        },
                        child: Text(
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
