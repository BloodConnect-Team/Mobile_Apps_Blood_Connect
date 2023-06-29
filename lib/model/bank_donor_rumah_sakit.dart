class BankDonorRumahSakit {
  int id;
  String bdrs;
  String kota;
  String alamat;
  String kontak;
  String lat;
  String lng;

  BankDonorRumahSakit({
    required this.id,
    required this.bdrs,
    required this.kota,
    required this.alamat,
    required this.kontak,
    required this.lat,
    required this.lng,
  });

  factory BankDonorRumahSakit.fromJson(Map<String, dynamic> json) =>
      BankDonorRumahSakit(
        id: json["id"],
        bdrs: json["BDRS"],
        kota: json["Kota"],
        alamat: json["Alamat"],
        kontak: json["Kontak"],
        lat: json["Lat"],
        lng: json["Lng"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "BDRS": bdrs,
        "Kota": kota,
        "Alamat": alamat,
        "Kontak": kontak,
        "Lat": lat,
        "Lng": lng,
      };
}
