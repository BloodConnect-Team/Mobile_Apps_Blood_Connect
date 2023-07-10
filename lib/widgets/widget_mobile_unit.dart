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
                height: 100,
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 50,
                              width: 60,
                              child: Image.asset('assets/img/icon3.png')),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.jadwalMobileUnit[index]["Instansi"],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                state.jadwalMobileUnit[index]["Waktu"],
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.grey),
                              ),
                              Text(
                                'Target Donor :${state.jadwalMobileUnit[index]["Target"]}',
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.grey),
                              ),
                              Text(
                                state.jadwalMobileUnit[index]["Alamat"],
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.grey),
                              ),
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
