
class JournalModel {

  JournalModel({
    this.docId,
    this.title,
    this.content,
  });

  String? docId;
  String? title;
  String? content;

  factory JournalModel.fromJson(Map<String, dynamic> json) => JournalModel(
    docId: json["docID"],
    title: json["title"],
    content: json["content"],
  );

  Map<String, dynamic> toJson(String docID) => {
    "docID": docID,
    "title": title,
    "content": content,
  };
}
