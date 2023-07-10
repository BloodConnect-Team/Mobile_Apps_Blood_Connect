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
            Text(
              state.detailNews["Title"],
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            Text(state.detailNews["date"]),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Text(state.detailNews["Content"].toString())),
            SizedBox(
              height: 10,
            ),
            Text("Ditulis Oleh : ${state.detailNews["Author"]}"),
          ],
        ),
      );
    });
  }
}
