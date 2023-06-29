class JadwalMobileUnit {
  String instansi;
  String waktu;
  String target;
  String alamat;

  JadwalMobileUnit({
    required this.instansi,
    required this.waktu,
    required this.target,
    required this.alamat,
  });

  factory JadwalMobileUnit.fromJson(Map<String, dynamic> json) =>
      JadwalMobileUnit(
        instansi: json["Instansi"],
        waktu: json["Waktu"],
        target: json["Target"],
        alamat: json["Alamat"],
      );

  Map<String, dynamic> toJson() => {
        "Instansi": instansi,
        "Waktu": waktu,
        "Target": target,
        "Alamat": alamat,
      };
}
