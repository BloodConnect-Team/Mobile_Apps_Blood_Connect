import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/data/repository/repository_post.dart';
import 'package:blood_connect/providers/auth_provider.dart';
import 'package:blood_connect/providers/service_provider.dart';
import 'package:blood_connect/screens/pages/forgot_.password_screen.dart';
import 'package:blood_connect/screens/pages/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _submitDataForm = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLogin = false;

  String password = '';
  String email = '';

  RepositoryPost repositoryLogin = RepositoryPost();
  ServiceProvider service = ServiceProvider();
  void submitData() {
    if (_submitDataForm.currentState != null) {
      if (_submitDataForm.currentState!.validate()) {
        _submitDataForm.currentState!.save();
      }
    }
  }

  bool _PasswordVisible = true;
  @override
  void initState() {
    _PasswordVisible = !_PasswordVisible;
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
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
                  fontFamily: 'Poppins',
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
                          label: Text('E-mail'),
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
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !value.contains('@')) {
                            return 'Mohon Masukkan Format Email yang Benar';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          email = value ?? '';
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
                        controller: passwordController,
                        obscureText: !_PasswordVisible,
                        decoration: InputDecoration(
                          hintText: "Password",
                          label: Text('Password'),
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
                            decoration: const BoxDecoration(
                              border: Border(
                                right: BorderSide(color: Colors.black),
                              ),
                            ),
                            child: Container(
                              child: Icon(
                                Icons.key,
                                color: primaryColor,
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
                          password = value ?? '';
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
                  primary: primaryColor,
                  elevation: 2,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () async {
                  Provider.of<authProvider>(context, listen: false).login(
                      context: context,
                      email: emailController.text,
                      password: passwordController.text);
                },
                child: Text(
                  'Masuk',
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (builder) => ForgotPasswordScreen()));
              },
              child: Text(
                'Lupa Password?',
                style: TextStyle(
                    fontSize: 15, color: primaryColor, fontFamily: 'Poppins'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum Punya Akun?",
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => const RegisterScreen()));
                    },
                    child: Text(
                      'Daftar',
                      style:
                          TextStyle(fontFamily: 'Poppins', color: primaryColor),
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
