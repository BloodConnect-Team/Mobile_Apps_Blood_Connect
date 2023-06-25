import 'package:blood_connect/color/color.dart';
import 'package:flutter/material.dart';

class RequestSucces extends StatelessWidget {
  const RequestSucces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(30.0),
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('assets/icons/complete.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Permintaan Anda Berhasil \n diajukan ,cek Berkala untuk \n melihat status verifikasi'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    focusColor: primaryColor,
                    onPressed: () {},
                    child: Icon(Icons.arrow_forward_outlined),
                  ),
                )
              ]),
            ),
          ],
        ));
  }
}
