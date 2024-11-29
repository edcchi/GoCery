import 'package:cloud_firestore/cloud_firestore.dart';

class CartItemModel {
  final String cartItemId;
  final String name;
  final double price;
  final int quantity;
  final DocumentReference itemRef;
  final String imageName;

  CartItemModel(
      {required this.cartItemId,
      required this.name,
      required this.price,
      required this.quantity,
      required this.itemRef,
      required this.imageName});

  factory CartItemModel.fromFirestore(DocumentSnapshot doc) {
    var docRef = FirebaseFirestore.instance
        .collection('items')
        .doc('l3miQgfnDiEYQF2TrMJV');
    var data = doc.data() as Map<String, dynamic>;
    return CartItemModel(
        cartItemId: doc.id,
        itemRef: data['itemRef'] ?? docRef,
        quantity: data['quantity'] ?? 1,
        name: data['name'] ?? 'honeybutter',
        price: data['itemPrice'] ?? 65,
        imageName: data['imageName'] ?? 'honeybutter.png');
  }
}
