import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/data/repository/repository_post.dart';
import 'package:blood_connect/screens/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPossiblePassword = true;
  final _formKeyRegister = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final goldarController = TextEditingController();

  RepositoryPost repository = RepositoryPost();

  static Future _getWidgetDialog(BuildContext context) {
    return Future.delayed(const Duration(seconds: 4), () async {
      showDialog(
          context: context,
          builder: (context) {
            return const Center(child: CircularProgressIndicator());
          });
      return await Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (builder) => const LoginScreen()));
    });
  }

  Future snackbarRegister() {
    return Future.delayed(const Duration(seconds: 0), () {
      return const SnackBar(
        content: Center(child: Text('Selamat Anda Sudah Register')),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 3),
        margin: EdgeInsets.all(40),
        elevation: 10,
      );
    });
  }

  @override
  void initState() {
    _isPossiblePassword = false;
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    goldarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/img/icon_splash.png'),
                  ),
                  Text(
                    "Blood Connect",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //Form input username register
            Form(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      label: const Text('Username'),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(right: 8),
                        decoration: const BoxDecoration(
                          border:
                              Border(right: BorderSide(color: Colors.black45)),
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(
                            Icons.person,
                            color: primaryColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama anda Kosong';
                      }
                      return value.trim();
                    },
                  ),
                ),
              ),
            ),
            //Form email register
            Container(
              margin: const EdgeInsets.all(10),
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Your Email",
                    label: const Text('Email'),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    prefixIcon: Container(
                      margin: const EdgeInsets.only(right: 8),
                      decoration: const BoxDecoration(
                        border:
                            Border(right: BorderSide(color: Colors.black45)),
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(
                          Icons.email,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    prefix: const VerticalDivider(
                      width: 10,
                      color: Colors.amber,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukkan email anda dengan Benar';
                    } else if (value.contains('@')) {
                      return 'Email anda harus memasukkan karakter khusus';
                    }

                    return null;
                  },
                ),
              ),
            ),
            //Form Password Register
            Container(
              margin: const EdgeInsets.all(10),
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  obscureText: !_isPossiblePassword,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "********",
                    label: const Text("Password"),
                    filled: true,
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isPossiblePassword = !_isPossiblePassword;
                          });
                        },
                        icon: Icon(_isPossiblePassword
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    prefixIcon: Container(
                      margin: const EdgeInsets.only(right: 8),
                      decoration: const BoxDecoration(
                        border:
                            Border(right: BorderSide(color: Colors.black45)),
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(
                          Icons.key,
                          color: primaryColor,
                          size: 30,
                        ),
                      ),
                    ),
                    prefix: const VerticalDivider(
                      width: 10,
                      color: Colors.amber,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'Panjang Password minimal 6 karakter';
                    }
                    return null;
                  },
                ),
              ),
            ),
            //Form Golongan Darah User
            Container(
              margin: const EdgeInsets.all(10),
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  controller: goldarController,
                  decoration: InputDecoration(
                    hintText: "Golongan Darah",
                    label: const Text('O+'),
                    filled: true,
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    prefixIcon: Container(
                      margin: const EdgeInsets.only(right: 8),
                      decoration: const BoxDecoration(
                        border:
                            Border(right: BorderSide(color: Colors.black45)),
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(
                          Icons.bloodtype,
                          color: primaryColor,
                          size: 30,
                        ),
                      ),
                    ),
                    prefix: const VerticalDivider(
                      width: 10,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            //Button Register

            SizedBox(
              width: 280,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () async {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const Center(child: CircularProgressIndicator());
                      });

                  bool response = await repository.posDataRegister(
                      nameController.text,
                      emailController.text,
                      passwordController.text,
                      goldarController.text);
                  if (response) {
                    Navigator.of(context).popAndPushNamed('/LoginScreen');

                    snackbarRegister();
                  } else {
                    const SnackBar(
                      content: Center(
                        child: Text("Register Anda gagal"),
                      ),
                      backgroundColor: Colors.redAccent,
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.all(40),
                      elevation: 10,
                    );
                  }
                },
                child: const Text('REGISTER'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.black87),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed('/LoginScreen');
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(color: primaryColor),
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
