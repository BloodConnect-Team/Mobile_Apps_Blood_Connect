import 'package:blood_connect/widgets/update.dart';
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'UTD PMI Kota Lhokseumawe',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Provinsi Aceh',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        Text(
                          'Narahubung : 0821-2874-2858',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Update(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
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
