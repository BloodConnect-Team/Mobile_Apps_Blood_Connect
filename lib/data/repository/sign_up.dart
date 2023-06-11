class SignUp {
  String name;
  String email;
  String password;
  String goldar;

  SignUp({
    required this.name,
    required this.email,
    required this.password,
    required this.goldar,
  });

  factory SignUp.fromJson(Map<String, dynamic> json) {
    return SignUp(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      goldar: json['goldar'],
    );
  }
}
