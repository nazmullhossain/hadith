import 'dart:convert';
import 'dart:typed_data';
import 'dart:io';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/book_model.dart';
import '../model/chapter_model.dart';

class DbHelper {
  Database? database;

  Future<Database?> get db async {
    if (database != null) {
      return database;
    }

    database = await initializeDatabase();
    return database;
  }

  Future<Database> initializeDatabase() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "hadith_bn_test.db");

    var exists = await databaseExists(path);

    if (!exists) {
      print("Create db");

      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      ByteData data =
          await rootBundle.load(url.join("assets", "hadith_bn_test.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("already exit");
    }

    var oDb = await openDatabase(path, readOnly: true);

    return oDb;
  }

  Future<List<ChapterModel>> getChapter() async {
    var dbClint = await db;
    List<Map<String, dynamic>> tasks = await dbClint!.query("chapter");
    print(tasks);
    return tasks.map((e) => ChapterModel.fromMap(e)).toList();
  }

  Future<List<BooksModel>> getBooks() async {
    var dbClint = await db;
    List<Map<String, dynamic>> tasks = await dbClint!.query("books");
    print(tasks);
    return tasks.map((e) => BooksModel.fromMap(e)).toList();
  }
}
