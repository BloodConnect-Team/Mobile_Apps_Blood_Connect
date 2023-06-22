

class GetProfile {
    final int id;
    final String name;
    final String goldar;
    final String email;
    final dynamic emailVerifiedAt;
    final dynamic city;
    final dynamic hp;
    final String photo;
    final String role;
    final DateTime createdAt;
    final DateTime updatedAt;

    GetProfile({
        required this.id,
        required this.name,
        required this.goldar,
        required this.email,
        required this.emailVerifiedAt,
        required this.city,
        required this.hp,
        required this.photo,
        required this.role,
        required this.createdAt,
        required this.updatedAt,
    });

    factory GetProfile.fromJson(Map<String, dynamic> json) => GetProfile(
        id: json["id"],
        name: json["name"] ,
        goldar: json["goldar"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"] ?? "",
        city: json["city"] ?? "",
        hp: json["hp"] ?? "",
        photo: json["photo"],
        role: json["role"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );


}
