import 'package:flutter_latihan_responsive/app/data/db/db_manager.dart';
import 'package:flutter_latihan_responsive/app/data/models/note_model.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

class HomeController extends GetxController {
  RxList allNote = <Note>[].obs;
  DBManager database = DBManager.instance;

  Future<void> getAllNote() async {
    Database db = await database.db;
    List<Map<String, dynamic>> data = await db.query('notes');

    if (data.isNotEmpty) {
      allNote(Note.toJsonList(data));
      allNote.refresh();
    } else {
      allNote.clear();
      allNote.refresh();
    }
  }

  Future deleteNote(int id) async {
    Database db = await database.db;
    await db.delete(
      'notes',
      where: 'id = ?',
      whereArgs: [id],
    );
    getAllNote();
  }

  @override
  void onInit() {
    getAllNote();
    super.onInit();
  }
}
