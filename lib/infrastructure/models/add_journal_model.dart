
class AddJournalModel {

  AddJournalModel({
    this.docId,
    this.title,
    this.content,
  });

  String? docId;
  String? title;
  String? content;

  factory AddJournalModel.fromJson(Map<String, dynamic> json) => AddJournalModel(
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
