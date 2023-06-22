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
        child: Text("Riwayat Permintaan "),
      ),
    );
  }
}
