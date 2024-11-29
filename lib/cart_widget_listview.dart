import 'package:flutter/material.dart';
import 'package:grocery_app/cart_widget_listviewitem.dart';
import 'package:grocery_app/domain/models/cartItem.dart';
import 'package:grocery_app/services/auth_service.dart';
import 'package:grocery_app/services/firestore_service.dart';

class CartWidgetListview extends StatefulWidget {
  const CartWidgetListview({super.key});

  @override
  State<CartWidgetListview> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidgetListview> {
  String? uid;

  @override
  void initState() {
    super.initState();
    AuthService().getUID().then((result) {
      setState(() {
        uid = result;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CartItemModel>>(
        future: FirestoreService().getCartItems(uid!),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator()); // Loading state
          } else if (snapshot.hasError) {
            return Center(
                child: Text('Error: ${snapshot.error}')); // Error state
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
                child: Text('No products found.')); // Empty data state
          } else {
            List<CartItemModel> cartItems = snapshot.data!;
            return ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  CartItemModel item = cartItems[index];
                  return CartWidgetListviewItem(item: item, uid: uid!);
                });
          }
        });
  }
}
