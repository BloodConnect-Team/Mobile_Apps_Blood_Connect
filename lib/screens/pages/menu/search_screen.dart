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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 230,
        decoration: BoxDecoration(
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 1),
            )
          ],
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 330,
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
                  hintStyle: TextStyle(
                    color: Colors.grey,
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
    );
  }
}

Widget _cardComponent(BuildContext context) {
  return const CustomScrollView(
    slivers: [],
  );
}
