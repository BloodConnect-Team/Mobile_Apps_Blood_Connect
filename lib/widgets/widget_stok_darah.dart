import 'package:blood_connect/providers/information_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetStokDarah extends StatelessWidget {
  const WidgetStokDarah({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InformationProvider>(builder: (context, state, child) {
      return SizedBox(
        height: 350,
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            Container(
              width: 50,
              height: 70,
              child: Column(
                children: [
                  Text(
                    'A+',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(state.stokDarah.toString())
                ],
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: Column(
                children: [
                  Text(
                    'B+',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text('')
                ],
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: Column(
                children: [
                  Text(
                    'O+',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text('')
                ],
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: Column(
                children: [
                  Text(
                    'AB+',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text('')
                ],
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: Column(
                children: [
                  Text(
                    'A-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text('')
                ],
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: Column(
                children: [
                  Text(
                    'B-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text('')
                ],
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: Column(
                children: [
                  Text(
                    'O-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text('')
                ],
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: Column(
                children: [
                  Text(
                    'O-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text('')
                ],
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: Column(
                children: [
                  Text(
                    'AB-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text('')
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
