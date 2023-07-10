import 'package:flutter/material.dart';

import '../../../color/color.dart';

class HistoryDonor extends StatefulWidget {
  const HistoryDonor({super.key});

  @override
  State<HistoryDonor> createState() => _HistoryDonorState();
}

class _HistoryDonorState extends State<HistoryDonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey[400]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Nama Pasien :',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Fajar Rivaldi Chan',
                              style: TextStyle(fontSize: 17),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: ontapButton),
                              child: Center(
                                child: Text(
                                  'Menunggu verifikasi',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.amber),
                                ),
                              ),
                            )
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Golongan Darah :',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'O+ (O Rhesus Positif)',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Kebutuhan :',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '5 Kantong',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Catatan',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Dibutuhkan Segera 5 Kantong Darah',
                        style: TextStyle(fontSize: 17),
                      ),
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: SizedBox(
                        width: 230,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                            ),
                            onPressed: () {},
                            child: Text("Terpenuhi"))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                        ),
                        onPressed: () {},
                        child: Icon(Icons.share_outlined)),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey[400]),
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 150.0),
                  child: Text(
                    'Nama Pasien :',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fajar Rivaldi Chan',
                        style: TextStyle(fontSize: 17),
                      ),
                      Container(
                        height: 30,
                        width: 150,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: fiveColor),
                        child: Center(
                          child: Text(
                            'Menunggu verifikasi',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.blueAccent),
                          ),
                        ),
                      )
                    ]),
                Text(
                  'Golongan Darah :',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  'O+ (O Rhesus Positif)',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Kebutuhan :',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  '5 Kantong',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Catatan',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  'Dibutuhkan Segera 5 Kantong Darah',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
