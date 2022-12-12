import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_latihan_responsive/app/data/db/db_manager.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

class AddNoteController extends GetxController {
  RxBool isLoading = false.obs;
  DBManager database = DBManager.instance;

  TextEditingController titleC = TextEditingController();
  TextEditingController descriptionC = TextEditingController();

  void addNote() async {
    isLoading.value = true;
    if (titleC.text.isNotEmpty && descriptionC.text.isNotEmpty) {
      Database db = await database.db;

      await db.insert(
        'notes',
        {
          // "id": Random().nextInt(999),
          "title": titleC.text,
          "description": descriptionC.text,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      isLoading.value = false;
    }
  }
}
