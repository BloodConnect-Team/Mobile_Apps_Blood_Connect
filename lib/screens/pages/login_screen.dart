import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/pages/bottomnav/bottom_navigation.dart';
import 'package:blood_connect/screens/pages/forgot_.password_screen.dart';
import 'package:blood_connect/screens/pages/home_page_screen.dart';
import 'package:blood_connect/screens/pages/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _login = "LOG IN";
  final _submitDataForm = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  bool _isLogin = true;
  void submitData() {
    if (_submitDataForm.currentState != null) {
      if (_submitDataForm.currentState!.validate()) {
        _submitDataForm.currentState!.save();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        key: _submitDataForm,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Container(
                margin: const EdgeInsets.only(top: 70),
                child: Image.asset(
                  'assets/img/icon_splash.png',
                ),
              ),
            ),
            const Text(
              'Blood Connect',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Color(0xffFF2156)),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                key: Key('email'),
                decoration: InputDecoration(
                  hintText: "Your email@gmail.com",
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  prefixIcon: Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(color: Colors.black54),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.email,
                        color: PrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                key: Key('password'),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  prefixIcon: Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(color: Colors.black54),
                      ),
                    ),
                    child: Container(
                      child: Icon(
                        Icons.key,
                        color: PrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: PrimaryColor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (buider) => BottomNavigation()));
                },
                child: Text(_login),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (builder) => ForgotPasswordScreen()));
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 15, color: PrimaryColor),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => RegisterScreen()));
                    },
                    child: Text(
                      'Register Now',
                      style: TextStyle(color: PrimaryColor),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
