import 'package:blood_connect/color/color.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('assets/img/icon_splash.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "BloodConnect",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xffFF2156)),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Your email@gmail.com",
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  prefixIcon: Container(
                    margin: const EdgeInsets.only(right: 8),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(color: Colors.black45),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.email,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Your Password reset will be send in your",
            style: TextStyle(fontSize: 15, color: Colors.black54),
          ),
          const Text(
            "Registered email address.",
            style: TextStyle(fontSize: 15, color: Colors.black54),
          ),
          const SizedBox(
            height: 70,
          ),
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Send',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Sign In",
              style: TextStyle(fontSize: 15, color: primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
