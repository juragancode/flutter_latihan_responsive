import 'package:hive/hive.dart';

// execute in terminal
// flutter packages pub run build_runner build
part 'database.g.dart';

@HiveType(typeId: 0)
class Notes extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? title;

  @HiveField(2)
  String? desc;
}

class NoteManager {
  static Box<Notes> getAllNotes() => Hive.box<Notes>("notes");
}
