import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ServiceProvider extends ChangeNotifier {
  Future doLogin(context) async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    var dialog = await const SnackBar(
      content: Center(
        child: Text("Berhasil"),
      ),
      backgroundColor: Colors.redAccent,
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(40),
      elevation: 10,
    );
    return dialog;
  }

  void saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('jwt_oken', token);
  }

  Future<String?> getToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('jwt_token');
    return token;
  }

  Future<void> fetchDataNews(String token) async {
    final token = await getToken("jwt_token");
    final responseNews = await http.get(
        Uri.parse('https://api.bloodconnect.social/api/getNews'),
        headers: {'Authorization': 'Bearer $token'});

    if (responseNews.statusCode == 200) {
      final data = responseNews.body;
      print(data);
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
