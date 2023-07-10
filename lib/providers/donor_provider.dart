import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DonorProvider extends ChangeNotifier {
  List donorReq = [];

  //Function REQUEST Donor
  void donorReqAll() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };

    final _baseUrlDonor =
        Uri.parse('https://api.bloodconnect.social/api/getReq');

    final responseDonorReq =
        await http.get(_baseUrlDonor, headers: requestHeaders);
    log(" URL : $_baseUrlDonor\n Status Code : ${responseDonorReq.statusCode} \n Response : ${responseDonorReq.body}");
    if (responseDonorReq.statusCode == 200) {
      List dataDonor = jsonDecode(responseDonorReq.body)["data"];
      donorReq = dataDonor;
      log("HAILLLLLL + " + donorReq.toString());
      notifyListeners();
    } else {
      log('Error');
      notifyListeners();
    }
  }
}
