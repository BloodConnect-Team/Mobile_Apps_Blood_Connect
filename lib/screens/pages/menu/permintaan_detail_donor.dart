import 'package:flutter/material.dart';

class PermintaanDetailDonor extends StatefulWidget {
  const PermintaanDetailDonor({super.key});

  @override
  State<PermintaanDetailDonor> createState() => _PermintaanDetailDonorState();
}

class _PermintaanDetailDonorState extends State<PermintaanDetailDonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Permintaan',
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(color: Colors.grey[400]),
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Row(
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(25.0), // Image radius
                          child: Image.asset('assets/img/news.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fajar Rivaldi Chan"),
                          Text("22 Maret 2023")
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
