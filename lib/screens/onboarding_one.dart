import 'package:blood_connect/color/color.dart';
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
                margin: const EdgeInsets.only(top: 100),
                child: SizedBox(
                  child: Image.asset('assets/img/bro.png'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Selamat Datang di Blood Connect',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    fontSize: 15,
                    fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Bantu orang Lain'),
              const Text('Temukan Kebutuhan Darah '),
              const Text('Disekitarmu'),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Positioned(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed('/OnBoardingTwo');
                      },
                      child: const Text(
                        'Lanjut',
                        style: TextStyle(
                          fontSize: 15,
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

//SPLASH SCREEN TWO

class OnboardingTwo extends StatefulWidget {
  const OnboardingTwo({super.key});

  @override
  State<OnboardingTwo> createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/img/rafiki.png')),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Kamu Adalah Pahlawan',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Jadilah Pahlawan'),
              const Text('bagikan kebutuhan darah'),
              const Text('untukmu,Temanmu dan orang sekitarmu'),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ],
              ),
              const SizedBox(
                height: 180,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Positioned(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (builder) => const OnboardingTree()),
                        );
                      },
                      child: const Text(
                        'Lanjut',
                        style: TextStyle(
                          fontSize: 15,
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

//On Boarding Tree

class OnboardingTree extends StatelessWidget {
  const OnboardingTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      width: MediaQuery.of(context).size.width,
                      child: OutlinedButton(
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: primaryColor, width: 3)),
                        ),
                        onPressed: () {
                          Navigator.of(context).popAndPushNamed('/LoginScreen');
                        },
                        child: const Text(
                          'MASUK',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: primaryColor),
                          onPressed: () => Navigator.of(context)
                              .popAndPushNamed('/registerScreen'),
                          child: const Text('DAFTAR'),
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
