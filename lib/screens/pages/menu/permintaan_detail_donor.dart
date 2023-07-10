import 'package:flutter/material.dart';

import '../../../widgets/widget_permintaan_donor.dart';

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
        child: WidgetPermintaanDonor(),
      ),
    );
  }
}
