class Note {
  int? id;
  String? title;
  String? description;

  Note({this.id, this.title, this.description});

  Note.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    return data;
  }

  static List<Note> toJsonList(List? data) {
    if (data == null || data.length == 0) return [];
    return data.map((e) => Note.fromJson(e)).toList();
  }
}
