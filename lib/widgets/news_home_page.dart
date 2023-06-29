import 'package:blood_connect/providers/information_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InformationProvider>(
      builder: (context, state, child) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.newsList.length,
            itemBuilder: (context, index) {
              return Card(
                shadowColor: Colors.grey,
                elevation: 15,
                child: Container(
                  width: 250,
                  height: 250,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Image.network(state.newsList[index]["Image"])),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        state.newsList[index]["date"],
                        style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        state.newsList[index]["Title"],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
