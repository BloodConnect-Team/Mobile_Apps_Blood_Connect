class NewsModel {
  int id;
  String title;
  String content;
  String author;
  String date;

  NewsModel({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    required this.date,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        id: json["id"],
        title: json["Title"],
        content: json["Content"],
        author: json["Author"],
        date: json["date"],
      );
}
