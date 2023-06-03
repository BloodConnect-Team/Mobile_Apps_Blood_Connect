import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/pages/bottomnav/bottom_navigation.dart';
import 'package:blood_connect/screens/pages/forgot_.password_screen.dart';
import 'package:blood_connect/screens/pages/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);
  // final Function(
  //     {required String username,
  //     required String password,
  //     required String email,
  //     required bool isLogin}) submitAuthForm;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _login = "LOG IN";
  final _submitDataForm = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLogin = false;
  String _username = '';
  String _password = '';
  String _email = '';

  void submitData() {
    if (_submitDataForm.currentState != null) {
      if (_submitDataForm.currentState!.validate()) {
        _submitDataForm.currentState!.save();

        print('_email $_email');
      }
    }
  }

  String? get _errorText {
    final text = passwordController.value.text;
    if (text.isNotEmpty) {
      return 'Password Tidak Boleh Kosong';
    } else {
      if (text.length < 6) {
        return 'Password Harus Lebih Dari enam';
      }
    }
    return null;
  }

  bool _PasswordVisible = true;
  @override
  void initState() {
    _PasswordVisible = false;
    super.initState();
  }

  void submit() {
    Navigator.push(
        context, MaterialPageRoute(builder: (buider) => BottomNavigation()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
            Form(
                key: _submitDataForm,
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Your email@gmail.com",
                          filled: true,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(right: 8),
                            decoration: const BoxDecoration(
                              border: Border(
                                right: BorderSide(color: Colors.black),
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
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !value.contains('@'))
                            return 'Mohon Masukkan Format Email yang Benar';
                          return null;
                        },
                        onSaved: (value) {
                          _email = value ?? '';
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        key: Key('password'),
                        obscureText: !_PasswordVisible,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _PasswordVisible = !_PasswordVisible;
                                });
                              },
                              icon: Icon(
                                _PasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              )),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(color: Colors.black),
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
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 6)
                            return 'Password Harus Memiliki 6 Karakter';
                          return null;
                        },
                        onSaved: (value) {
                          _password = value ?? '';
                        },
                      ),
                    ),
                  ],
                )),
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
                onPressed: () {},
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
