import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/data/repository/repository_post.dart';
import 'package:blood_connect/screens/pages/bottomnav/bottom_navigation.dart';
import 'package:blood_connect/screens/pages/forgot_.password_screen.dart';
import 'package:blood_connect/screens/pages/register_screen.dart';
import 'package:flutter/material.dart';

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
  String _password = '';
  String _email = '';
  RepositoryPost repositoryLogin = RepositoryPost();
  void submitData() {
    if (_submitDataForm.currentState != null) {
      if (_submitDataForm.currentState!.validate()) {
        _submitDataForm.currentState!.save();

        print('_email $_email');
      }
    }
  }

  bool _PasswordVisible = true;
  @override
  void initState() {
    _PasswordVisible = false;
    super.initState();
  }

  void submitToHome() {
    Navigator.push(context,
        MaterialPageRoute(builder: (buider) => const BottomNavigation()));
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
                        controller: passwordController,
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
                  primary: primaryColor,
                  elevation: 2,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () async {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      });
                  bool responseLogin = await repositoryLogin.PostDataLogin(
                    emailController.text,
                    passwordController.text,
                  );
                  if (responseLogin == true) {
                    submitToHome();
                  } else {
                    const SnackBar(
                      content: Center(
                        child: Text("Anda Gagal Login"),
                      ),
                      backgroundColor: Colors.redAccent,
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.all(40),
                      elevation: 10,
                    );
                  }
                },
                child: Text(_login),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (builder) => const ForgotPasswordScreen()));
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 15, color: primaryColor),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => const RegisterScreen()));
                    },
                    child: Text(
                      'Register Now',
                      style: TextStyle(color: primaryColor),
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
