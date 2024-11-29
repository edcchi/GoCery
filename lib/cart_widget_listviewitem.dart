import 'package:flutter/material.dart';
import 'package:grocery_app/domain/models/cartItem.dart';
import 'package:grocery_app/services/firestore_service.dart';
import 'package:provider/provider.dart';

class CartWidgetListviewItem extends StatefulWidget {
  final CartItemModel item;
  final String uid;
  const CartWidgetListviewItem(
      {super.key, required this.item, required this.uid});

  @override
  State<CartWidgetListviewItem> createState() => _CartWidgetItemState();
}

class _CartWidgetItemState extends State<CartWidgetListviewItem> {
  String? uid;
  int quantity = 0;
  late CartItemModel item;

  @override
  void initState() {
    super.initState();
    setState(() {
      quantity = widget.item.quantity;
      item = widget.item;
      uid = widget.uid;
    });
  }

  void incrementQuantityState() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantityState() {
    setState(() {
      quantity--;
    });
  }

  @override
  void dispose() {
    FirestoreService().setCartItemQuantity(item.cartItemId, uid!, quantity);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'lib/images/${item.imageName}',
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            item.name,
            style: TextStyle(fontSize: 16),
          ),
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.remove_outlined),
              onPressed: () {
                decrementQuantityState();

                print("Decrease Quantity");
              },
            ),
            Text(
              "${quantity.toString()}",
              style: TextStyle(fontSize: 16),
            ),
            IconButton(
              icon: Icon(Icons.add_rounded),
              onPressed: () {
                incrementQuantityState();
                print("Increase Quantity");
              },
            ),
          ],
        ),
        Text(
          "₱${(item.price * quantity).toString()}",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
