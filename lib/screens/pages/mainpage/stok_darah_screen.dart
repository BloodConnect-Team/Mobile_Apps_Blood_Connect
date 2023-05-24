import 'package:blood_connect/color/color.dart';
import 'package:flutter/material.dart';

class StokDarahScreen extends StatelessWidget {
  const StokDarahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Center(
          child: Text(
            'Stok Darah',
            style: TextStyle(fontSize: 17, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/icons/icon_stock_darah.png')),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Text(
                        'UTD PMI Kota Lhokseumawe',
                        style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 120),
                        child: Text(
                          'Aceh Utara',
                          style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Text(
                          '*Stok Darah Dapat Berubah Sewaktu-waktu',
                          style: TextStyle(fontSize: 10, color: PrimaryColor),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 250, top: 5),
            child: Text(
              'WB',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
