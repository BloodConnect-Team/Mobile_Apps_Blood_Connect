import 'package:blood_connect/data/repository/repository_post.dart';
import 'package:blood_connect/model/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  String name = "";
  String goldar  = "";
  String email  = "";
  dynamic emailVerifiedAt = "";
  String city = "";
  dynamic hp = "";
  String photo = "";

  Future<void> getProfile() async {
   GetProfile? data = await RepositoryPost().profile();
    name = data?.name ?? "";
    goldar = data?.goldar ?? "";
    email = data?.email ?? "";
    emailVerifiedAt = data?.emailVerifiedAt ?? "";
    city = data?.city ?? "";
    hp = data?.hp ?? "";
    photo = data?.photo ?? "";
    notifyListeners();
  }

  void UpdateProfile() {}
}
