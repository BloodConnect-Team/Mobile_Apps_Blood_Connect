
class StokUdd {
  int response;
  bool success;
  String message;
  Map<String, int?> data;

  StokUdd({
    required this.response,
    required this.success,
    required this.message,
    required this.data,
  });

  factory StokUdd.fromJson(Map<String, dynamic> json) => StokUdd(
        response: json["response"],
        success: json["success"],
        message: json["message"],
        data:
            Map.from(json["data"]).map((k, v) => MapEntry<String, int?>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "response": response,
        "success": success,
        "message": message,
        "data": Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}
