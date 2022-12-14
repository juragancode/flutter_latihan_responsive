import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../data/db/database.dart';

class AddNoteController extends GetxController {
  RxBool isLoading = false.obs;

  TextEditingController titleC = TextEditingController();
  TextEditingController descC = TextEditingController();

  Future<void> addNote() async {
    if (titleC.text.isNotEmpty && descC.text.isNotEmpty) {
      // create without id
      Notes note = Notes()
        ..id = 0
        ..title = titleC.text
        ..desc = descC.text;

      final box = NoteManager.getAllNotes();

      // get id auto increment
      int id = await box.add(note);

      // edit note -> with the generated id
      note.id = id;
      note.save();
    }
  }
}
