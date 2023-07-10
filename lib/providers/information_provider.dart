import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:blood_connect/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/pages/mainpage/detail_news.dart';

class InformationProvider extends ChangeNotifier {
  List newsList = [];
  var detailNews;
  var stokDarah;

  List jadwalMobileUnit = [];
  List notificationList = [];

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
      log("Failed");
    }
  }

  void newsDetail(BuildContext context, int id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUrlNewsDetail =
        Uri.parse('https://api.bloodconnect.social/api/getNews/$id');
    final responseNewsDetail =
        await http.get(_baseUrlNewsDetail, headers: requestHeaders);
    log("NewsDetail :$_baseUrlNewsDetail\n StatusCode : ${responseNewsDetail.statusCode.toString()}\n Response : ${responseNewsDetail.body} ");
    if (responseNewsDetail.statusCode == 200) {
      Object dataDetail = jsonDecode(responseNewsDetail.body)["data"];
      detailNews = dataDetail;
      CircularProgressIndicator();
      await Navigator.of(context)
          .push(MaterialPageRoute(builder: (builder) => DetailNews()));
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
    } else {
      CircularProgressIndicator();
      notifyListeners();
    }
  }

  void listJadwalMobileUnit() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUddStokDarah =
        Uri.parse('https://api.bloodconnect.social/api/pmi/jadwal');
    final responseNewsDetail =
        await http.get(_baseUddStokDarah, headers: requestHeaders);
    log("Mobil Unit:$_baseUddStokDarah\n StatusCode : ${responseNewsDetail.statusCode.toString()}\n Response : ${responseNewsDetail.body} ");
    if (responseNewsDetail.statusCode == 200) {
      List dataDetailMobilUnit = jsonDecode(responseNewsDetail.body)["data"];
      jadwalMobileUnit = dataDetailMobilUnit;
      notifyListeners();
    } else {}
  }

  void searchMobile(String search) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUddStokDarah =
        Uri.parse('https://api.bloodconnect.social/api/pmi/jadwal');
    final responseNewsDetail =
        await http.get(_baseUddStokDarah, headers: requestHeaders);
    log("Mobil Unit:$_baseUddStokDarah\n StatusCode : ${responseNewsDetail.statusCode.toString()}\n Response : ${responseNewsDetail.body} ");
    if (responseNewsDetail.statusCode == 200) {
      List dataDetailMobilUnit = jsonDecode(responseNewsDetail.body)["data"];
      jadwalMobileUnit = dataDetailMobilUnit;
      notifyListeners();
    } else {}
  }

  void searchMu(String search) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUddStokDarah = Uri.parse(
        'https://api.bloodconnect.social/api/pmi/jadwal/search?keyword=$search');
    final responseNewsDetail =
        await http.get(_baseUddStokDarah, headers: requestHeaders);
    log("Mobil Unit:$_baseUddStokDarah\n StatusCode : ${responseNewsDetail.statusCode.toString()}\n Response : ${responseNewsDetail.body} ");
    if (responseNewsDetail.statusCode == 200) {
      List dataDetailMobilUnit = jsonDecode(responseNewsDetail.body)["data"];
      jadwalMobileUnit = dataDetailMobilUnit;
      notifyListeners();
    } else {}
  }

  void notificationHome() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUddStokDarah =
        Uri.parse('https://api.bloodconnect.social/api/notification');
    final responseNewsDetail =
        await http.get(_baseUddStokDarah, headers: requestHeaders);
    log("notification:$_baseUddStokDarah\n StatusCode : ${responseNewsDetail.statusCode.toString()}\n Response : ${responseNewsDetail.body} ");
    if (responseNewsDetail.statusCode == 200) {
      List dataDetailMobilUnit = jsonDecode(responseNewsDetail.body)["data"];
      notificationList = dataDetailMobilUnit;
      notifyListeners();
    } else {
      print("Notification: gagal");
    }
  }
}
