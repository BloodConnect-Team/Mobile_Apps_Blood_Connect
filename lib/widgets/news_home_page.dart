import 'package:flutter/material.dart';

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        child: Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
            Card(
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
                      'UTD PMI Kota Medan',
                      style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                    ),
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    )
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            //container kedua
            Card(
              elevation: 15,
              shadowColor: Colors.grey,
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
                      'UTD PMI Kota Medan',
                      style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                    ),
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    )
                  ],
                ),
              ),
            ),
            //Container ketiga
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Card(
              elevation: 15,
              shadowColor: Colors.blueGrey,
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
                      'UTD PMI Kota Medan',
                      style: TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                    ),
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
