import 'dart:convert';

class ChapterModel {
  final int id;
  final int chapterId;
  final int bookId;
  final String title;
  final int number;
  final String hadisRange;
  final String bookName;

  ChapterModel({
    required this.id,
    required this.chapterId,
    required this.bookId,
    required this.title,
    required this.number,
    required this.hadisRange,
    required this.bookName,
  });

  factory ChapterModel.fromJson(String str) => ChapterModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ChapterModel.fromMap(Map<String, dynamic> json) => ChapterModel(
    id: json["id"]??0,
    chapterId: json["chapter_id"]??0,
    bookId: json["book_id"]??0,
    title: json["title"]??"",
    number: json["number"]??0,
    hadisRange: json["hadis_range"]??"",
    bookName: json["book_name"]??"",
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "chapter_id": chapterId,
    "book_id": bookId,
    "title": title,
    "number": number,
    "hadis_range": hadisRange,
    "book_name": bookName,
  };
}