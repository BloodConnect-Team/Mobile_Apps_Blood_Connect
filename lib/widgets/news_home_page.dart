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
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.newsList.length,
            itemBuilder: (context, index) {
              
                return Card(
                  shadowColor: Colors.grey,
                  elevation: 15,
                  child: Container(
                    width: 200,
                    height: 150,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.all(5),
                            child: Image.asset('assets/img/news.png')),
                        Text(
                          state.newsList[index]["date"],
                          style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                        ),
                        Text(
                          state.newsList[index]["Title"],
                          style: TextStyle(
                              fontSize: 15,
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
