import 'package:flutter/cupertino.dart';
import 'package:flutter_latihan_responsive/app/data/db/db_manager.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

class EditNoteController extends GetxController {
  RxBool isLoading = false.obs;
  DBManager database = DBManager.instance;

  TextEditingController titleC = TextEditingController();
  TextEditingController descriptionC = TextEditingController();

  //
  void editNote(int id) async {
    Database db = await database.db;
    await db.update(
      'notes',
      {
        "id": id,
        "title": titleC.text,
        "description": descriptionC.text,
      },
      where: "id = ?",
      whereArgs: [id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
