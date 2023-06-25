import 'package:flutter/material.dart';

class WidgetListNotification extends StatelessWidget {
  const WidgetListNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 60,
            padding: EdgeInsets.only(left: 10.0),
            child: Image.asset('assets/icons/notificationchecklist.png'),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Text(
                    "Permintaan Anda Telah diverifikasi",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 140.0),
                child: Text("14 Jun,12.01"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
