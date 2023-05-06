import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/widgets/form_register.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/icon_splash.png'),
                  ),
                  Text(
                    "Blood Connect",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: PrimaryColor),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //Form input username register
            FormRegister(),
            SizedBox(
              height: 50,
            ),
            //Button Register
            SizedBox(
              width: 280,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: PrimaryColor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: Size(100, 40), //////// HERE
                ),
                onPressed: () {},
                child: Text('REGISTER'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.black87),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(color: PrimaryColor),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
