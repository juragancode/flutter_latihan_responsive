import 'package:flutter/material.dart';
import 'package:flutter_latihan_responsive/app/data/note_database.dart';
import 'package:flutter_latihan_responsive/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Note'),
        centerTitle: true,
      ),
      body: StreamBuilder<List<Note>>(
          stream: controller.noteM.streamAllNotes(),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snap.data?.length == 0 || snap.data == null) {
              return Center(
                child: Text("No Data Available..."),
              );
            }
            return ListView.builder(
              itemCount: snap.data!.length,
              itemBuilder: (context, index) {
                Note note = snap.data![index];
                return ListTile(
                  onTap: () => Get.toNamed(
                    Routes.EDIT_NOTE,
                    arguments: note,
                  ),
                  leading: CircleAvatar(
                    child: Text("${note.id}"),
                  ),
                  title: Text("${note.title}"),
                  subtitle: Text("${note.desc}"),
                  trailing: IconButton(
                    onPressed: () => controller.noteM.deleteNote(note),
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_NOTE),
        child: Icon(Icons.add),
      ),
    );
  }
}
