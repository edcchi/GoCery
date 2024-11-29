import 'package:cloud_firestore/cloud_firestore.dart';

class ItemModel {
  final String itemId;
  final String category;
  final String imageName;
  final String name;
  final double price;

  ItemModel(
      {required this.itemId,
      required this.category,
      required this.imageName,
      required this.name,
      required this.price});

  factory ItemModel.fromFirestore(DocumentSnapshot doc) {
    var data = doc.data() as Map<String, dynamic>;
    return ItemModel(
        itemId: doc.id,
        category: data['category'] ?? 'Snack',
        imageName: data['imageName'] ?? 'honeybutter.png',
        name: data['name'] ?? 'honeybutter',
        price: data['price'] ?? 65);
  }
}
