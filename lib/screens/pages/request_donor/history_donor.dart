import 'package:flutter/material.dart';

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
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(10.0),
            color: Colors.grey[300],
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 150.0),
                    child: Text(
                      'Nama Pasien :',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 150.0),
                    child: Row(children: [
                      Text(
                        'Fajar Rivaldi Chan',
                        style: TextStyle(fontSize: 17),
                      ),
                      Container(
                        color: Colors.blue,
                        child: Center(
                            child: Text(
                          'Menunggu verifikasi',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.amber),
                        )),
                      )
                    ]),
                  ),
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
                    'sdnknskdknskdknsdks \n asnjnajnsjjjsajj \ndjsnjsdnnd',
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
