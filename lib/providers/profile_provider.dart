import 'dart:developer';

import 'package:blood_connect/data/repository/repository_post.dart';
import 'package:blood_connect/model/profile_model.dart';
import 'package:blood_connect/providers/auth_provider.dart';
import 'package:blood_connect/providers/donor_provider.dart';
import 'package:blood_connect/providers/information_provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:blood_connect/screens/onboarding_one.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileProvider extends ChangeNotifier {
  int id = 0;
  String name = "";
  String goldar = "";
  String email = "";
  dynamic emailVerifiedAt = "";
  String city = "";
  dynamic hp = "";
  String photo = "";

  var context;

  Future<void> getProfile() async {
    GetProfile? data = await RepositoryPost().profile();
    id = data?.id ?? 0;
    name = data?.name ?? "";
    goldar = data?.goldar ?? "";
    email = data?.email ?? "";
    emailVerifiedAt = data?.emailVerifiedAt ?? "";
    city = data?.city ?? "";
    hp = data?.hp ?? "";
    photo = data?.photo ?? "";
    notifyListeners();
  }

  void updateProfile(
    BuildContext, {
    required int id,
    required String username,
    required String email,
    required String goldar,
    required String city,
    required String phone_number,
  }) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    final Map<String, String> header = {'Authorization': "Bearer" + tokenAuth!};

    final Map<String, String> body = {
      'name': username,
      'email': email,
      'goldar': goldar,
      'city': city,
      'phone_number': phone_number,
    };

    final _baseUrlUpdateProfile =
        Uri.parse('https://api.bloodconnect.social/api/account/update/$id');
    final responseDetailProfile = await http.post(
      _baseUrlUpdateProfile,
      headers: header,
      body: body,
    );
    log("Update Profile : $_baseUrlUpdateProfile \n StatusCode : ${responseDetailProfile.statusCode.toString()}  \n Response : ${responseDetailProfile.body}");
    if (responseDetailProfile.statusCode == 200) {
      final snackBar = SnackBar(
        content: Center(
          child: Text('Succes Update'),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      success();
      notifyListeners();
    } else {
      final snackBar = SnackBar(
        content: Center(
          child: Text('Gagal Update Profile'),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      notifyListeners();
    }
  }

  void success() {
    showDialog(
        context: context,
        builder: (BuildContext context) => const AlertDialog(
              title: Center(
                  child: Text(
                'Succes',
                style: TextStyle(color: Colors.green, fontFamily: 'Poppins'),
              )),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Center(child: Text('Silahkan Cek E-mail Anda')),
                  ],
                ),
              ),
            ));
  }

  void Clear() {
    name = "";
    goldar = "";
    email = "";
    emailVerifiedAt = "";
    city = "";
    hp = "";
    photo = "";
  }

  // bool logoutState = false;
  void logout(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token_auth');
    // String token = '';
    // await prefs.setString('token-auth', token);
    // await prefs.setString('jwt_token', token);
    // await prefs.remove('token-auth');
    // // SharedPreferences preferences = await SharedPreferences.getInstance();
    // // await preferences.clear();
    // prefs.clear();
    Clear();

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (builder) => OnboardingTree()));
    notifyListeners();
  }
}
