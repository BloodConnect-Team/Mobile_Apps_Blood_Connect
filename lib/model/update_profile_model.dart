class UpdateProfileModel {
  final String name;
  final String email;
  final String? goldar;
  final String city;
  final String phone_number;

  UpdateProfileModel(
      {required this.name,
      required this.email,
      required this.goldar,
      required this.city,
      required this.phone_number});

  factory UpdateProfileModel.fromJson(Map<String, dynamic> json) =>
      UpdateProfileModel(
          name: json["name"],
          email: json["email"],
          goldar: json["goldar"],
          city: json["city"],
          phone_number: json["phone_number"]);
}
