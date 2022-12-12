import 'package:flutter/material.dart';
import 'package:flutter_latihan_responsive/app/data/models/note_model.dart';
import 'package:flutter_latihan_responsive/app/modules/home/controllers/home_controller.dart';

import 'package:get/get.dart';

import '../controllers/edit_note_controller.dart';

class EditNoteView extends GetView<EditNoteController> {
  final HomeController homeC = Get.find();
  Note note = Get.arguments;
  @override
  Widget build(BuildContext context) {
    controller.titleC.text = note.title!;
    controller.descriptionC.text = note.description!;
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
          SizedBox(height: 10),
          TextField(
            controller: controller.descriptionC,
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
                  controller.editNote(note.id!);
                  await homeC.getAllNote();
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
