import 'package:blood_connect/providers/information_provider.dart';
import 'package:blood_connect/widgets/widget_mobile_unit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileUnitScreen extends StatefulWidget {
  const MobileUnitScreen({super.key});

  @override
  State<MobileUnitScreen> createState() => _MobileUnitScreenState();
}

class _MobileUnitScreenState extends State<MobileUnitScreen> {
  void updateListDarah(String value) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Mobil Unit',
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
            child: SizedBox(
              height: 50,
              child: TextField(
                onChanged: (value) {
                  Provider.of<InformationProvider>(context, listen: false)
                      .searchMu(value);
                },
                decoration: InputDecoration(
                    hintText: 'Search .......',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2, right: 220),
            child: Text(
              'Jadwal Mobil Unit',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            ),
          ),
          SizedBox(height: 10),
          WidgetMobileUnit()
        ],
      ),
    );
  }
}
