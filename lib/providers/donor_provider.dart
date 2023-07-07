import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DonorProvider extends ChangeNotifier {
  List donorReq = [];
  var detailRequestClient;

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

  void detailReq() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUrlRequest =
        Uri.parse('https://api.bloodconnect.social/api/getReq/detail/1');
    final responseRequestDetailDonor =
        await http.get(_baseUrlRequest, headers: requestHeaders);
    log(" URL  Detail Req :$_baseUrlRequest,\n Status Code detail Req : ${responseRequestDetailDonor.statusCode} \n Response detailReq : ${responseRequestDetailDonor.body}, ");
    if (responseRequestDetailDonor.statusCode == 200) {
      Object dataDetailReq =
          json.decode(responseRequestDetailDonor.body)["data"];
      detailRequestClient = dataDetailReq;
      log("DETAIL REQUEST CLIENT" + detailRequestClient.toString());
      notifyListeners();
    } else {
      CircularProgressIndicator();
    }
  }
}
