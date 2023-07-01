import 'package:flutter/material.dart';

class DetailNews extends StatefulWidget {
  const DetailNews({super.key});

  @override
  State<DetailNews> createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [Icon(Icons.arrow_back_ios)],
        ),
      ),
    );
  }
}
