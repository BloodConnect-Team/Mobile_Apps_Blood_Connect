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
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(10.0),
        color: Colors.grey[300],
        child: Container(
          padding: EdgeInsets.only(right: 100.0),
          child: Column(
            children: [
              Text(
                'Nama Pasien :',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Text(
                'Fajar Rivaldi Chan',
                style: TextStyle(fontSize: 17),
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
    );
  }
}
