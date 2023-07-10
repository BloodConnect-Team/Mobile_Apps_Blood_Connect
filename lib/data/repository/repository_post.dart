import 'dart:convert';
import 'dart:developer';
import 'package:blood_connect/model/profile_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class RepositoryPost {
  final _baseUrlRegister =
      Uri.parse('https://api.bloodconnect.social/api/auth/register');

  Future posDataRegister(
      String name, String email, String password, String goldar) async {
    final Map<String, dynamic> requestBody = {
      'name': name,
      'email': email,
      'password': password,
      'goldar': goldar
    };

    try {
      final response = await http.post(
        _baseUrlRegister,
        body: requestBody,
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<bool> PostDataLogin(String email, String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final _baseUrlToLogin =
        Uri.parse('https://api.bloodconnect.social/api/auth/login');
    final Map<String, dynamic> requestLogin = {
      'email': email,
      'password': password
    };
    try {
      final responseLogin = await http.post(
        _baseUrlToLogin,
        body: requestLogin,
      );

      log(" URL : $_baseUrlRegister\n Status Code : ${responseLogin.statusCode.toString()}\n Response : ${responseLogin.body}");

      if (responseLogin.statusCode == 200) {
        //get token adn save on shared preferences

        Map<String, dynamic> data = jsonDecode(responseLogin.body);
        String token = data["data"]["access_token"];
        log("TOKEN : " + token);
        await prefs.setString('token-auth', token);

        return true;
      } else {
        return false;
      }
    } catch (e) {
      log("URL : $_baseUrlRegister\n Error : ${e.toString()}");
      return false;
      // throw Exception(e);
    }
  }

  Future postForgotPassword(String email) async {
    final _baseUrlForgotPassword =
        Uri.parse('https://api.bloodconnect.social/api/auth/forget');
    final Map<String, dynamic> requestForgotPassword = {
      'email': email,
    };
    try {
      final resonsePassword =
          await http.post(_baseUrlForgotPassword, body: requestForgotPassword);
      if (resonsePassword.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<GetProfile?> profile() async {
    //get token on shared preferences
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? tokenAuth = prefs.getString('token-auth');
    log("TOKEN : " + tokenAuth!);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer" + tokenAuth
    };

    final _baseUrlProfile =
        Uri.parse('https://api.bloodconnect.social/api/auth/me');
    // try {
    final response = await http.get(_baseUrlProfile, headers: requestHeaders);
    log(" URL : $_baseUrlProfile\n Status Code : ${response.statusCode.toString()}\n Response : ${response.body}");
    if (response.statusCode == 200) {
      log(response.body);
      return GetProfile.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
    // } catch (e) {
    //   throw Exception(e);
    // }
  }
}
