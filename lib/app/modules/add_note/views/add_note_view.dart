import 'package:flutter/material.dart';
import 'package:flutter_latihan_responsive/app/data/note_database.dart';
import 'package:flutter_latihan_responsive/app/modules/home/controllers/home_controller.dart';

import 'package:get/get.dart';

import '../controllers/add_note_controller.dart';

class AddNoteView extends GetView<AddNoteController> {
  final HomeController homeC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
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
                  await homeC.noteM.insertNote(
                    Note(
                      title: controller.titleC.text,
                      desc: controller.descC.text,
                    ),
                  );
                  controller.isLoading.value = false;
                  Get.back();
                }
              },
              child: Text(
                  (controller.isLoading.isFalse) ? "Add Note" : "Loading..."),
            ),
          ),
        ],
      ),
    );
  }
}
