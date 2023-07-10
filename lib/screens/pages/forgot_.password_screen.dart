import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/data/repository/repository_post.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final repository = RepositoryPost();

  TextEditingController _email = TextEditingController();

  final _formState = GlobalKey<FormState>();

  void failed() {
    showDialog(
        context: context,
        builder: (BuildContext context) => const AlertDialog(
              title: Center(
                  child: Text(
                'Gagal',
                style:
                    TextStyle(color: Colors.redAccent, fontFamily: 'Poppins'),
              )),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Center(
                        child: Column(
                      children: [
                        Text(
                          'E-mail Anda Salah',
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ));
  }

  void success() {
    showDialog(
        context: context,
        builder: (BuildContext context) => const AlertDialog(
              title: Center(
                  child: Text(
                'Succes',
                style: TextStyle(color: Colors.green, fontFamily: 'Poppins'),
              )),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Center(child: Text('Silahkan Cek E-mail Anda')),
                  ],
                ),
              ),
            ));
  }

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('assets/img/icon_splash.png'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "BloodConnect",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xffFF2156)),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              child: SizedBox(
                width: 300,
                child: Form(
                  key: _formState,
                  child: TextFormField(
                    controller: _email,
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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'E-mail masih Kosong\ngunakan karakter  @ ';
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Jika kamu lupa dengan password kamu",
              style: TextStyle(
                  fontSize: 12, color: Colors.black54, fontFamily: 'poppins'),
            ),
            const Text(
              "Silahkan massukkan alamat email anda",
              style: TextStyle(
                  fontSize: 12, color: Colors.black54, fontFamily: 'Poppins'),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    elevation: 2,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () async {
                    bool postForgot =
                        await repository.postForgotPassword(_email.text);
                    if (postForgot) {
                      success();
                    } else {
                      failed();
                    }
                  },
                  child: const Text(
                    'Kirim',
                    style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Masuk",
                style: TextStyle(fontSize: 15, color: primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
