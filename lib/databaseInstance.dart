// import 'package:flutter/material.dart';

import 'dart:io';

import 'package:flutter_latihan_responsive/productModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseIntsance {
  final String _databaseName = "my_database.db";
  final int _databaseVersion = 1;

  // Product Table
  final String table = "product";
  final String id = "id";
  final String name = "name";
  final String category = "category";
  final String createdAt = "created_at";
  final String updatedAt = "created_at";

  Database? _database;
  Future<Database> database() async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE $table ($id INTEGER PRIMARY KEY, $name TEXT NULL, $category TEXT NULL, $createdAt TEXT NULL, $updatedAt TEXT NULL)');
  }

  Future<List<ProductModel>> all() async {
    final data = await _database!.query(table);
    List<ProductModel> result =
        data.map((e) => ProductModel.fromJson(e)).toList();
    return result;
  }

  Future<int> insert(Map<String, dynamic> row) async {
    final query = await _database!.insert(table, row);
    return query;
  }
}
