import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocery_app/domain/models/cartItem.dart';
import 'package:grocery_app/domain/models/item.dart';

class FirestoreService {
  Future<List<ItemModel>> getItems() async {
    try {
      QuerySnapshot query =
          await FirebaseFirestore.instance.collection('items').get();
      List<ItemModel> itemList =
          query.docs.map((doc) => ItemModel.fromFirestore(doc)).toList();
      return itemList;
    } catch (e) {
      return List<ItemModel>.empty();
    }
  }

  Future<void> addToCart(ItemModel item, String uid, int quantity) async {
    try {
      DocumentReference itemRef =
          FirebaseFirestore.instance.collection('items').doc(item.itemId);
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .collection('cart')
          .add({
        'name': item.name,
        'itemRef': itemRef,
        'itemPrice': item.price,
        'quantity': quantity,
        'imageName': item.imageName
      });
    } catch (e) {
      print('Error adding to Cart');
    }
  }

  Future<List<CartItemModel>> getCartItems(String uid) async {
    try {
      QuerySnapshot query = await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .collection('cart')
          .get();
      List<CartItemModel> cartItemList =
          query.docs.map((doc) => CartItemModel.fromFirestore(doc)).toList();
      return cartItemList;
    } catch (e) {
      return List<CartItemModel>.empty();
    }
  }

  Future<void> deleteCartItem(String cartID, String uid) async {
    try {
      DocumentReference query = FirebaseFirestore.instance
          .collection('user')
          .doc(uid)
          .collection('cart')
          .doc(cartID);
      await query.delete();
      print('Item Deleted');
    } catch (e) {
      print('Failed to delete cart item: $e');
    }
  }

  Future<void> deleteCartItems(String uid) async {
    try {
      CollectionReference query = FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .collection('cart');
      var snapshot = await query.get();
      for (var doc in snapshot.docs) {
        await doc.reference.delete();
      }
      print('cart deleted!');
    } catch (e) {
      print('deletion failed');
    }
  }

  Future<void> setCartItemQuantity(
      String cartItemId, String uid, int quantity) async {
    try {
      DocumentReference itemRef = FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .collection('cart')
          .doc(cartItemId);

      await itemRef.update({'quantity': quantity});
      print('Successfully updated');
    } catch (e) {
      print('failed to update');
    }
  }
}
