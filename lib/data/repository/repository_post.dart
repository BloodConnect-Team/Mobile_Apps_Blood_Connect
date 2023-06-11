import 'package:http/http.dart' as http;

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
}
