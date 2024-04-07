import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.00", "assets/images/images/avocado.png", Colors.green],
    ["Banana", "2.50", "assets/images/images/banana.png", Colors.yellow],
    ["Chicken", "12.00", "assets/images/images/chicken.png", Colors.brown],
    ["Water", "1.00", "assets/images/images/water.png", Colors.blue],
  ];

  // list of cart items
  List _cartitems = [];

  get shopItems => _shopItems;

  get cartItems => _cartitems;

  // add items to catr
  void addItemsToCart(int index) {
    _cartitems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFormCart(int index) {
    _cartitems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartitems.length; i++) {
      totalPrice += double.parse(_cartitems[i][1]);
    }

    return totalPrice.toStringAsFixed(2);
  }
}
