import 'package:blood_connect/widgets/widget_stok_darah.dart';
import 'package:flutter/material.dart';

class StokDarahScreen extends StatefulWidget {
  const StokDarahScreen({super.key});

  @override
  State<StokDarahScreen> createState() => _StokDarahScreenState();
}

class _StokDarahScreenState extends State<StokDarahScreen> {
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
          'Stok Darah',
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                        height: 90,
                        width: 100,
                        child:
                            Image.asset('assets/icons/icon_stock_darah.png')),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: 45.0, top: 10, bottom: 10.0),
                          child: Text(
                            'UTD PMI Kota Lhokseumawe',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 155.0, bottom: 5.0),
                          child: Text(
                            'Provinsi Aceh',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 100.0, bottom: 5.0),
                          child: Text(
                            'Diperbaruipada : 2023-03-20',
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          WidgetStokDarah(),
          Padding(
            padding: EdgeInsets.only(right: 50.0, top: 10),
            child: Text(
              '*Stok Darah Dapat Berubah Sewaktu-waktu',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
