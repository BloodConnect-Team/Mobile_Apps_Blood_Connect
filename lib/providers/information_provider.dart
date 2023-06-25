import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:blood_connect/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InformationProvider extends ChangeNotifier {
  void news() {
    Future<NewsModel?> profile() async {
      //get token on shared preferences
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
      // try {
      final response = await http.get(_baseUrlNews, headers: requestHeaders);
      log(" URL : $_baseUrlNews\n Status Code : ${response.statusCode.toString()}\n Response : ${response.body}");
      if (response.statusCode == 200) {
      } else {}
      // } catch (e) {
      //   throw Exception(e);
      // }
    }
  }
}
