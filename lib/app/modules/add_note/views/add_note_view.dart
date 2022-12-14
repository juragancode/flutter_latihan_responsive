import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_note_controller.dart';

class AddNoteView extends GetView<AddNoteController> {
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
                  //
                  await controller.addNote();
                  Get.back();
                }
              },
              child: Text(
                  controller.isLoading.isFalse ? "Add Note" : "Loading..."),
            ),
          ),
        ],
      ),
    );
  }
}
