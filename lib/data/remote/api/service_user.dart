
// Future<http.Response?> registerUser(SignUp data) async {
//   http.Response? response;
//   try {
//     response = await http.post(
//         Uri.parse("https://api.bloodconnect.social/api/auth/register"),
//         headers: {
//           HttpHeaders.contentTypeHeader: "application/json",
//         },
//         body: jsonEncode(data.toJson()));
//   } catch (e) {
//     print(e);
//   }
//   return response;
// }
