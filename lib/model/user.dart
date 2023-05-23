class User {
  final String name;
  final String email;
  final String password;
  final String goldar;

  User(
      {required this.name,
      required this.email,
      required this.password,
      required this.goldar});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'] as String,
        email: json['email'] as String,
        password: json['password'] as String,
        goldar: json['goldar'] as String);
  }
}
