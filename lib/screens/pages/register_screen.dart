// ignore_for_file: await_only_futures

import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/data/repository/repository_post.dart';
import 'package:blood_connect/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPossiblePassword = true;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final goldarController = TextEditingController();

  RepositoryPost repository = RepositoryPost();

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
                  Provider.of<authProvider>(context, listen: false).register(
                      context: context,
                      username: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      goldar: goldarController.text);
                },
                child: const Text('DAFTAR'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sudah Punya Akun",
                    style: TextStyle(color: Colors.black87),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed('/LoginScreen');
                      },
                      child: Text(
                        "Masuk",
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
