import 'package:blood_connect/providers/information_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetListNotification extends StatelessWidget {
  const WidgetListNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InformationProvider>(builder: (context, state, child) {
      return Expanded(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: state.notificationList.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 60,
                      padding: EdgeInsets.only(left: 10.0),
                      child:
                          Image.asset('assets/icons/notificationchecklist.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Expanded(
                            child: Text(
                              state.notificationList[index]["Pesan"],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 140.0),
                          child: Text(state.notificationList[index]["Tanggal"]),
                        )
                      ],
                    ),
                  ],
                ),
              );
            }),
      );
    });
  }
}
