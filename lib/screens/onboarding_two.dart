import 'package:flutter/material.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(60),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: Image.asset('assets/icon_splash.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'BloodConnect',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Connected For Life',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    decorationColor: Colors.black),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 2.0),
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('LOG IN'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {},
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
