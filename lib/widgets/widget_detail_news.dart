import 'package:blood_connect/providers/information_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetDetailNews extends StatefulWidget {
  const WidgetDetailNews({super.key});

  @override
  State<WidgetDetailNews> createState() => _WidgetDetailNewsState();
}

class _WidgetDetailNewsState extends State<WidgetDetailNews> {
  @override
  Widget build(BuildContext context) {
    return Consumer<InformationProvider>(builder: (context, state, child) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                state.detailNews["Title"],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(state.detailNews["date"])),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              width: MediaQuery.of(context).size.width - 40,
              child: Text(
                state.detailNews["Content"].toString(),
                style: TextStyle(
                  height: 2,
                  letterSpacing: 2,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Ditulis Oleh : ${state.detailNews["Author"]}",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      );
    });
  }
}
