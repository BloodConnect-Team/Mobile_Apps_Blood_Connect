import 'package:flutter/material.dart';

import '../../../color/color.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10.0)),
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 10.0),
                    child: Row(
                      children: [
                        ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(25.0), // Image radius
                            child: Image.asset('assets/img/news.png',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fajar Rivaldi Chan",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "22 Maret 2023",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Expanded(
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
                          Text(
                            'Fajar Rivaldi Chan',
                            style: TextStyle(fontSize: 17),
                          ),
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
                            'Dibutuhkan Segera 5 Kantong Darahsdfdsfsdsdgsdgdsgsdgsd',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, bottom: 20, top: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.redAccent,
                  ),
                  Expanded(
                      child: Text(
                          "sjfnsnfsjnfjsnjfnjsnfdsdfd \n dsdgdsgdfnjsfndjnfjdnfjdnfjdnfjndfn"))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              height: 200,
              child: Center(
                child: Text("Map"),
              ),
            ),
            SizedBox(
              height: 10,
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
    );
  }
}
