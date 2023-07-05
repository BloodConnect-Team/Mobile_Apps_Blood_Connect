import 'package:flutter/material.dart';

import '../color/color.dart';

class WidgetFindDonor extends StatelessWidget {
  const WidgetFindDonor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: ontapButton,
              ),
              child: Center(
                child: Text(
                  'B+',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Fajar Rivaldi chan",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bloodtype_rounded,
                        color: Colors.grey,
                      ),
                      Text(
                        "Whole blood",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      "Kota Lhokseumawe",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "5 Menit yang lalu",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
