import 'dart:convert';
import 'dart:developer';
import 'package:blood_connect/screens/pages/menu/permintaan_detail_donor.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/pages/request_donor/request_succes.dart';

class DonorProvider extends ChangeNotifier {
  List donorReq = [];
  var detailRequestClient;
  List bdrs = [];
  List riwayatPermintaan = [];
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

  String goldar = "";
  void changeGoldarFilter(String goldar) async {
    this.goldar = goldar;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Authorization': "Bearer" + tokenAuth!
    };
    Map<String, String> body = {
      'keyword': "",
      'goldar': goldar,
    };
    final _baseSearchDetail =
        Uri.parse('https://api.bloodconnect.social/api/getReq/search');
    final responseSearchDetail =
        await http.post(_baseSearchDetail, headers: requestHeaders, body: body);
    log("Mobil Unit: $_baseSearchDetail \n StatusCode : ${responseSearchDetail.statusCode.toString()}\n Response : ${responseSearchDetail.body} ");
    if (responseSearchDetail.statusCode == 200) {
      List dataDetailMobilUnit = jsonDecode(responseSearchDetail.body)["data"];
      donorReq = dataDetailMobilUnit;
      notifyListeners();
    } else {}
  }

//SEARCH
  void searchDetailRequest({required keyword}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Authorization': "Bearer" + tokenAuth!
    };
    Map<String, String> body = {
      'keyword': keyword,
      'goldar': goldar,
    };
    final _baseSearchDetail =
        Uri.parse('https://api.bloodconnect.social/api/getReq/search');
    final responseSearchDetail =
        await http.post(_baseSearchDetail, headers: requestHeaders, body: body);
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

  void postDataRequest(BuildContext context,
      {required String rumahSakit,
      required String name,
      required String goldar,
      required String jenisDonor,
      required String jumlahKantong,
      required String nohp,
      required String note,
      required String kontakNama}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    final Map<String, String> header = {'Authorization': "Bearer" + tokenAuth!};

    final Map<String, String> body = {
      'bdrs': rumahSakit,
      'nama_pasien': name,
      'pasien_goldar': goldar,
      'jenis_donor': jenisDonor,
      'jumlah_kantong': jumlahKantong,
      'kontak_nomor': nohp,
      'catatan': note,
      'kontak_nama': kontakNama
    };

    final _baseUrlPostDataRequest =
        Uri.parse('https://api.bloodconnect.social/api/postReq');
    final responsePost =
        await http.post(_baseUrlPostDataRequest, headers: header, body: body);
    if (responsePost.statusCode == 200) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (builder) => RequestSucces()));
      notifyListeners();
    } else {
      final snackBar = SnackBar(
        content: Center(
          child: Text('Data Gagal Terkirim'),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      notifyListeners();
    }
  }

  void getBdrs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUrlGetBdrs =
        Uri.parse('https://api.bloodconnect.social/api/getBDRS');
    final responseGetBdrs =
        await http.get(_baseUrlGetBdrs, headers: requestHeaders);

    log("NewsDetail :$_baseUrlGetBdrs\n StatusCode : ${responseGetBdrs.statusCode.toString()}\n Response : ${responseGetBdrs.body} ");
    if (responseGetBdrs.statusCode == 200) {
      List dataBdrs = jsonDecode(responseGetBdrs.body)["data"];
      bdrs = dataBdrs;
      notifyListeners();
    }
  }

  void detailRiwayatPermintaan() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth!
    };
    final _baseUrlRiwayatPermintaan =
        Uri.parse('https://api.bloodconnect.social/api/getReq/my');
    final responseRiwayat =
        await http.get(_baseUrlRiwayatPermintaan, headers: requestHeaders);
    log("Mobil Unit:$_baseUrlRiwayatPermintaan\n StatusCode : ${responseRiwayat.statusCode.toString()}\n Response : ${responseRiwayat.body} ");
    if (responseRiwayat.statusCode == 200) {
      List dataDetailPermintaan = jsonDecode(responseRiwayat.body)["data"];
      riwayatPermintaan = dataDetailPermintaan;
      notifyListeners();
    } else {
      Text('not Found ');
      notifyListeners();
    }
  }
}
