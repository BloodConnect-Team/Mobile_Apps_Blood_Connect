import 'dart:convert';
import 'dart:developer';
import 'package:blood_connect/screens/pages/menu/permintaan_detail_donor.dart';
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

  void searchDetailRequest(String searchDetail) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseSearchDetail = Uri.parse(
        'https://api.bloodconnect.social/api/getReq/search?keyword=$searchDetail');
    final responseSearchDetail =
        await http.get(_baseSearchDetail, headers: requestHeaders);
    log("Mobil Unit: $_baseSearchDetail \n StatusCode : ${responseSearchDetail.statusCode.toString()}\n Response : ${responseSearchDetail.body} ");
    if (responseSearchDetail.statusCode == 200) {
      List dataDetailMobilUnit = jsonDecode(responseSearchDetail.body)["data"];
      donorReq = dataDetailMobilUnit;
      notifyListeners();
    } else {}
  }

  void detailRequest(BuildContext context, int id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUrlDetailRequestDonor =
        Uri.parse('https://api.bloodconnect.social/api/getReq/detail/$id');
    final responseDetailRequestDonor =
        await http.get(_baseUrlDetailRequestDonor, headers: requestHeaders);
    log("NewsDetail :$_baseUrlDetailRequestDonor\n StatusCode : ${responseDetailRequestDonor.statusCode.toString()}\n Response : ${responseDetailRequestDonor.body} ");
    if (responseDetailRequestDonor.statusCode == 200) {
      Object dataDetail = jsonDecode(responseDetailRequestDonor.body)["data"];
      detailRequestClient = dataDetail;

      Navigator.of(context).push(
          MaterialPageRoute(builder: (builder) => PermintaanDetailDonor()));
      notifyListeners();
    } else {}
  }
}
