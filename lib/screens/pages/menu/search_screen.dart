import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/providers/donor_provider.dart';
import 'package:blood_connect/widgets/button_goldar.dart';
import 'package:blood_connect/widgets/widget_find_donor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 230,
          decoration: BoxDecoration(
            color: primaryColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 1),
              )
            ],
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    onChanged: (value) {
                      Provider.of<DonorProvider>(context, listen: false)
                          .searchDetailRequest(keyword: value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Search...',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonGoldar(),
            ],
          ),
        ),
        WidgetFindDonor()
      ]),
    );
  }
}
