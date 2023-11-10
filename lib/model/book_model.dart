import 'package:meta/meta.dart';
import 'dart:convert';

class BooksModel {
  final int id;
  final String title;
  final String titleAr;
  final int numberOfHadis;
  final String abvrCode;
  final String bookName;
  final String bookDescr;
  final String colorCode;

  BooksModel({
    required this.id,
    required this.title,
    required this.titleAr,
    required this.numberOfHadis,
    required this.abvrCode,
    required this.bookName,
    required this.bookDescr,
    required this.colorCode,
  });

  factory BooksModel.fromJson(String str) => BooksModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BooksModel.fromMap(Map<String, dynamic> json) => BooksModel(
    id: json["id"]??0,
    title: json["title"]??"",
    titleAr: json["title_ar"]??"",
    numberOfHadis: json["number_of_hadis"]??0,
    abvrCode: json["abvr_code"]??"",
    bookName: json["book_name"]??"",
    bookDescr: json["book_descr"]??"",
    colorCode: json["color_code"]??"",
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "title_ar": titleAr,
    "number_of_hadis": numberOfHadis,
    "abvr_code": abvrCode,
    "book_name": bookName,
    "book_descr": bookDescr,
    "color_code": colorCode,
  };
}