
class Journal {
  Journal({
    this.id,
    this.name,
    this.uid,
    this.content,
    this.dateCreated,
    this.dateUpdated,
  });

  String? id;
  String? name;
  String? uid;
  String? content;
  DateTime? dateCreated;
  DateTime? dateUpdated;

  factory Journal.fromJson(Map<String, dynamic> json) => Journal(
    id: json["id"],
    name: json["name"],
    uid: json["uid"],
    content: json["content"],
    dateCreated: json["dateCreated"] != null ? DateTime.parse(json["dateCreated"]) : null,
    dateUpdated: json["dateUpdated"] != null ? DateTime.parse(json["dateUpdated"]) : null,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "uid": uid,
    "content": content,
    "dateCreated": dateCreated != null ? dateCreated!.toIso8601String() : null,
    "dateUpdated": dateUpdated != null ? dateUpdated!.toIso8601String() : null,
  };
}

