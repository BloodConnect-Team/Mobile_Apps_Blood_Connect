import 'package:flutter/material.dart';

class StokDarahScreen extends StatelessWidget {
  const StokDarahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Stok Darah',
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/icons/icon_stock_darah.png')),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: const Text(
                          'UTD PMI Kota Lhokseumawe',
                          style: TextStyle(fontSize: 13, fontFamily: 'Poppins'),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 100),
                        child: const Text(
                          'Provinsi Aceh',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 55),
                        child: const Text(
                          'update on: 2023-03-20',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Text(
                          '*Stok Dapat Berubah Sewaktu-waktu',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.redAccent,
                              fontFamily: 'Poppins'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GridView.count(crossAxisCount: 3)
        ],
      ),
    );
  }
}
