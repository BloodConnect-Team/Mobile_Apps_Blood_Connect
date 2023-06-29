import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:blood_connect/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InformationProvider extends ChangeNotifier {
  List newsList = [];
  List detailNews = [];
  Object stokDarah = {};

  void news() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };

    final _baseUrlNews =
        Uri.parse('https://api.bloodconnect.social/api/getNews');
    final response = await http.get(_baseUrlNews, headers: requestHeaders);
    log(" URL : $_baseUrlNews\n Status Code : ${response.statusCode.toString()}\n Response : ${response.body}");
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)["data"];
      newsList = data;
      log("HAILLLLLL + " + newsList.toString());
      notifyListeners();
    } else {
      Text("Error Not Found");
      log("Failed");
    }
  }

  void newsDetail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUrlNewsDetail =
        Uri.parse('https://api.bloodconnect.social/api/getNews/1');
    final responseNewsDetail =
        await http.get(_baseUrlNewsDetail, headers: requestHeaders);
    log("NewsDetail :$_baseUrlNewsDetail\n StatusCode : ${responseNewsDetail.statusCode.toString()}\n Response : ${responseNewsDetail.body} ");
    if (responseNewsDetail.statusCode == 200) {
      List dataDetail = jsonDecode(responseNewsDetail.body)["data"];
      detailNews = dataDetail;
      notifyListeners();
    } else {}
  }

  void stokUdd() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUddStokDarah =
        Uri.parse('https://api.bloodconnect.social/api/pmi/stok');
    final responseNewsDetail =
        await http.get(_baseUddStokDarah, headers: requestHeaders);
    log("NewsDetail :$_baseUddStokDarah\n StatusCode : ${responseNewsDetail.statusCode.toString()}\n Response : ${responseNewsDetail.body} ");
    if (responseNewsDetail.statusCode == 200) {
      Object dataDetail = jsonDecode(responseNewsDetail.body)["data"];
      stokDarah = dataDetail;
      notifyListeners();
    } else {}
  }
}
