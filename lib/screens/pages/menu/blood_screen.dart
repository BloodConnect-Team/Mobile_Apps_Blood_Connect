import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/pages/request_donor/history_donor.dart';
import 'package:blood_connect/screens/pages/request_donor/request_donor.dart';
import 'package:flutter/material.dart';

class BloodScreen extends StatelessWidget {
  const BloodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Permintaan',
              ),
              Tab(
                text: 'Riwayat Permintaan',
              )
            ],
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 20.0),
            unselectedLabelStyle: TextStyle(fontSize: 15.0),
          ),
          title: const Text(
            'Permintaan Donor',
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
          backgroundColor: primaryColor,
        ),
        body: TabBarView(children: [
          RequestDonor(),
          HistoryDonor(),
        ]),
      ),
    );
  }
}
