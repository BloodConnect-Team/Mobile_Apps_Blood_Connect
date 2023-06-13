import 'dart:convert';

class DataPostRequest {
  String rs;
  String namaPasien;
  String pasienGoldar;
  String jenisGoldar;
  String jumlahKantong;
  String kontakPerson;
  String catatan;

  DataPostRequest({
    required this.rs,
    required this.namaPasien,
    required this.pasienGoldar,
    required this.jenisGoldar,
    required this.jumlahKantong,
    required this.kontakPerson,
    required this.catatan,
  });

  factory DataPostRequest.fromJson(Map<String, dynamic> json) =>
      DataPostRequest(
        rs: json["rs"],
        namaPasien: json["nama_pasien"],
        pasienGoldar: json["pasien_goldar"],
        jenisGoldar: json["jenis_goldar"],
        jumlahKantong: json["jumlah_kantong"],
        kontakPerson: json["kontak_person"],
        catatan: json["catatan"],
      );

  Map<String, dynamic> toJson() => {
        "rs": rs,
        "nama_pasien": namaPasien,
        "pasien_goldar": pasienGoldar,
        "jenis_goldar": jenisGoldar,
        "jumlah_kantong": jumlahKantong,
        "kontak_person": kontakPerson,
        "catatan": catatan,
      };
}

DataPostRequest DataPostRequestFromJson(String str) =>
    DataPostRequest.fromJson(json.decode(str));

String DataPostRequestToJson(DataPostRequest data) =>
    json.encode(data.toJson());
