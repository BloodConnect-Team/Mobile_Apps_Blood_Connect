import 'package:flutter/material.dart';

class MobileUnitScreen extends StatefulWidget {
  const MobileUnitScreen({super.key});

  @override
  State<MobileUnitScreen> createState() => _MobileUnitScreenState();
}

class _MobileUnitScreenState extends State<MobileUnitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Mobile Unit',
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
            child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search .......',
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 2, right: 220),
            child: Text(
              'Jadwal Mobil Unit',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                )
              ], borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  SizedBox(child: Image.asset('assets/img/icon3.png')),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0, right: 5.0),
                        child: Text(
                          'Herfort Brirtis Hospital',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.0, bottom: 5.0),
                        child: Text(
                          'UTD PMI Kota Lhokseumawe',
                          style: TextStyle(fontSize: 13, color: Colors.black26),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 45.0, bottom: 5.0),
                        child: Text('Target Donor: 50',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black26)),
                      ),
                      Text('JL.Perkutut GG Gereja II',
                          style:
                              TextStyle(fontSize: 15, color: Colors.black26)),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                  offset: Offset(0.0, 0.0),
                )
              ], borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  SizedBox(child: Image.asset('assets/img/icon3.png')),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0, right: 5.0),
                        child: Text(
                          'Herfort Brirtis Hospital',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.0, bottom: 5.0),
                        child: Text(
                          'UTD PMI Kota Lhokseumawe',
                          style: TextStyle(fontSize: 13, color: Colors.black26),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 45.0, bottom: 5.0),
                        child: Text('Target Donor: 50',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black26)),
                      ),
                      Text('JL.Perkutut GG Gereja II',
                          style:
                              TextStyle(fontSize: 15, color: Colors.black26)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
