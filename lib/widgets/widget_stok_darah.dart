import 'package:blood_connect/providers/information_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetStokDarah extends StatelessWidget {
  const WidgetStokDarah({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InformationProvider>(builder: (context, state, child) {
      return SizedBox(
        height: 400,
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'A +',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      state.stokDarah["A_pos"].toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'B +',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      state.stokDarah["B_pos"].toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'O +',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      state.stokDarah["O_pos"].toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'AB +',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      state.stokDarah["AB_pos"].toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'A -',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      state.stokDarah["A_neg"].toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'B -',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      state.stokDarah["B_neg"].toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'O -',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      state.stokDarah["O_neg"].toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'AB -',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      state.stokDarah["AB_neg"].toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
