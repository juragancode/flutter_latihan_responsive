import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_note_controller.dart';
import '../../../data/db/database.dart';

class EditNoteView extends GetView<EditNoteController> {
  Notes note = Get.arguments;
  @override
  Widget build(BuildContext context) {
    controller.titleC.text = note.title!;
    controller.descC.text = note.desc!;
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            autocorrect: false,
            controller: controller.titleC,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "title",
            ),
          ),
          SizedBox(height: 15),
          TextField(
            autocorrect: false,
            controller: controller.descC,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "description",
            ),
          ),
          SizedBox(height: 10),
          Obx(
            () => ElevatedButton(
              onPressed: () async {
                if (controller.isLoading.isFalse) {
                  await controller.editNote(note);
                  Get.back();
                }
              },
              child: Text(
                  controller.isLoading.isFalse ? "Edit Note" : "Loading..."),
            ),
          ),
        ],
      ),
    );
  }
}
