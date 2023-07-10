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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(children: [
                Container(
                  child: Column(
                    children: [
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
                            'Permintaan Anda Berhasil \n Diajukan ,cek Berkala untuk \n Melihat status verifikasi'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FloatingActionButton(
                          focusColor: primaryColor,
                          onPressed: () {},
                          child: Icon(Icons.arrow_forward_outlined),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ],
        ));
  }
}
