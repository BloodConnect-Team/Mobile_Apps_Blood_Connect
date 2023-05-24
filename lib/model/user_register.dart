class UserRegister {
  final String name;
  final String email;
  final String password;
  final String goldar;

  UserRegister(
      {required this.name,
      required this.email,
      required this.password,
      required this.goldar});

  factory UserRegister.fromJson(Map<String, dynamic> json) {
    return UserRegister(
        name: json['name'] as String,
        email: json['email'] as String,
        password: json['password'] as String,
        goldar: json['goldar'] as String);
  }
}
