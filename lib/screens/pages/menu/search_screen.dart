import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/widgets/button_goldar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var _clearSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(children: [
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
                    controller: _clearSearch,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          _clearSearch.clear();
                        },
                      ),
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
              const ButtonGoldar(),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
                      mainAxisSize: MainAxisSize.min,
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
                        Row(
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
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            Text(
                              "Kota Lhokseumawe",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w400),
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
            )
          ],
        )
      ]),
    );
  }
}
