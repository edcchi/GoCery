import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  Future<List<String>> getItems() async {
    try {
      await FirebaseFirestore.instance;
    } catch (e) {}
    return List<String>.empty();
  }
}
