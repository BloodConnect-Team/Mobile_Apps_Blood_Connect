import 'package:blood_connect/data/remote/api/response_login.dart';
import 'package:http/http.dart' as http;

class LoginController {
  Future<ResponseLogin>? loginUser() {
    return null;
  }
}

class LoginRepository {
  Future<http.Response> login(String email, String password) {
    return http.post(
        Uri.parse('https://api.bloodconnect.social/api/auth/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
  }
}
