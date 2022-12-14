import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/db/database.dart';

class EditNoteController extends GetxController {
  RxBool isLoading = false.obs;

  TextEditingController titleC = TextEditingController();
  TextEditingController descC = TextEditingController();

  Future<void> editNote(Notes note) async {
    note.title = titleC.text;
    note.desc = descC.text;

    // await note.save();
    note.save();
  }
}
