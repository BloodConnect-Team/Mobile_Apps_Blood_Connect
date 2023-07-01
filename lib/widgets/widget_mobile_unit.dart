import 'package:blood_connect/providers/information_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetMobileUnit extends StatelessWidget {
  const WidgetMobileUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InformationProvider>(builder: (context, state, child) {
      return Expanded(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: state.jadwalMobileUnit.length,
            itemBuilder: (context, index) {
              return Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 50,
                              width: 60,
                              child: Image.asset('assets/img/icon3.png')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(state.jadwalMobileUnit[index]["Instansi"]),
                              Text(state.jadwalMobileUnit[index]["Waktu"]),
                              Text(state.jadwalMobileUnit[index]["Target"]),
                              Text(state.jadwalMobileUnit[index]["Alamat"]),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      );
    });
  }
}
