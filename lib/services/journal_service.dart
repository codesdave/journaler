import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/Journal_Model.dart';

class JournalService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String collectionName = 'journals';

  /// To add journal
  Future<void> addJournal(Journal journal) async {
    try {
      await _firestore.collection(collectionName).doc(journal.id).set(journal.toJson());
    } catch (error) {
      print('Error adding journal: $error');
      throw Exception('Failed to add journal');
    }
  }

  /// To read all journals
  Future<List<Journal>> readAllJournals() async {
    QuerySnapshot querySnapshot = await _firestore.collection(collectionName).get();
    List<Journal> journals = [];
    querySnapshot.docs.forEach((doc) {
      journals.add(Journal.fromJson(doc.data() as Map<String, dynamic>));
    });
    return journals;
  }

  /// To read a single journal
  Future<Journal> readAJournal(String journalId) async {
    DocumentSnapshot docSnapshot = await _firestore.collection(collectionName).doc(journalId).get();
    if (docSnapshot.exists) {
      return Journal.fromJson(docSnapshot.data() as Map<String, dynamic>);
    } else {
      throw Exception('Journal not found');
    }
  }
  /// To update a journal
  Future<void> updateJournal(String journalId, Journal updatedJournal) async {
    await _firestore.collection(collectionName).doc(journalId).update(updatedJournal.toJson());
  }

  /// To delete a journal
  Future<void> deleteJournal(String journalId) async {
    await _firestore.collection(collectionName).doc(journalId).delete();
  }

  /// To retrieve all journals read by a user
  Future<List<Journal>> readAllJournalsByUser(String userId) async {
    QuerySnapshot querySnapshot = await _firestore.collection(collectionName).where('uid', isEqualTo: userId).get();
    List<Journal> journals = [];
    querySnapshot.docs.forEach((doc) {
      journals.add(Journal.fromJson(doc.data() as Map<String, dynamic>));
    });
    return journals;
  }
}
