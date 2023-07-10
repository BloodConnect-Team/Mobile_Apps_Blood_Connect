import 'package:blood_connect/providers/information_provider.dart';
import 'package:blood_connect/widgets/widget_detail_news.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailNews extends StatefulWidget {
  const DetailNews({super.key});

  @override
  State<DetailNews> createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Consumer<InformationProvider>(builder: (context, state, child) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Image.network(state.detailNews["Image"]),
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 40.0),
                  child: SafeArea(
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 30,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                              )),
                        )),
                  ),
                ),
              ],
            ),
            WidgetDetailNews()
          ],
        ),
      ),
    );
  }
}
