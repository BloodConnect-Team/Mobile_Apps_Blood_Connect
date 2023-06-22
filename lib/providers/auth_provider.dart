import 'package:blood_connect/data/repository/repository_post.dart';
import 'package:blood_connect/screens/pages/bottomnav/bottom_navigation.dart';
import 'package:flutter/material.dart';

class authProvider extends ChangeNotifier {

  void register(){

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
      
      var snackbar =const SnackBar(
        content: Center(
          child: Text("Berhasil"),
        ),
        backgroundColor: Colors.redAccent,
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(40),
        elevation: 10,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
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

  void logout(){
    
  }
}
