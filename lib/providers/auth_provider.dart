import 'package:blood_connect/data/repository/repository_post.dart';
import 'package:blood_connect/model/update_profile_model.dart';
import 'package:blood_connect/screens/pages/bottomnav/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class authProvider extends ChangeNotifier {
  void register(
      {required BuildContext context,
      required String username,
      required String email,
      required String password,
      required String goldar}) async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    notifyListeners();
    var responseSignUp = await RepositoryPost()
        .posDataRegister(username, email, password, goldar);

    if (responseSignUp) {
      Navigator.of(context).popAndPushNamed('/LoginScreen');
      notifyListeners();
      final snackBar = SnackBar(
        content: Center(
          child: Text('Successfully'),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      notifyListeners();
    } else {
      final snackBar = SnackBar(
        content: Center(
          child: Text('register gagal'),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      notifyListeners();
    }
  }

  void login(
      {required BuildContext context,
      required String email,
      required String password}) async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    notifyListeners();
    var response = await RepositoryPost().PostDataLogin(email, password);
    if (response) {
      Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
      notifyListeners();
    } else {
      Navigator.of(context).pop();
      var snackbar = const SnackBar(
        content: Center(
          child: Text("GAGAL"),
        ),
        backgroundColor: Colors.redAccent,
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(40),
        elevation: 10,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
