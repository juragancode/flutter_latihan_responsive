import 'package:flutter/material.dart';
import 'package:flutter_latihan_responsive/app/data/note_database.dart';
import 'package:flutter_latihan_responsive/app/modules/home/controllers/home_controller.dart';

import 'package:get/get.dart';

import '../controllers/edit_note_controller.dart';

class EditNoteView extends GetView<EditNoteController> {
  final HomeController homeC = Get.find();
  Note note = Get.arguments;
  @override
  Widget build(BuildContext context) {
    controller.titleC.text = note.title;
    controller.descC.text = note.desc;
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.titleC,
            decoration: InputDecoration(
              labelText: "Title",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            controller: controller.descC,
            decoration: InputDecoration(
              labelText: "Description",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          Obx(
            () => ElevatedButton(
              onPressed: () async {
                if (controller.isLoading.isFalse) {
                  controller.isLoading.value = true;
                  await homeC.noteM.updateNote(
                    Note(
                      id: note.id,
                      title: controller.titleC.text,
                      desc: controller.descC.text,
                    ),
                  );
                  controller.isLoading.value = false;
                  Get.back();
                }
              },
              child: Text(
                  (controller.isLoading.isFalse) ? "Edit Note" : "Loading..."),
            ),
          )
        ],
      ),
    );
  }
}
