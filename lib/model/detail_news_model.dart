class DetailNewsModel {
  int id;
  String title;
  String content;
  String author;
  String date;

  DetailNewsModel({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    required this.date,
  });

  factory DetailNewsModel.fromJson(Map<String, dynamic> json) =>
      DetailNewsModel(
        id: json["id"],
        title: json["Title"],
        content: json["Content"],
        author: json["Author"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Title": title,
        "Content": content,
        "Author": author,
        "date": date,
      };
}
