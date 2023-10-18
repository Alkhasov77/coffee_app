import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    [
      "Cappuccino",
      "5.00",
      "lib/images/capp.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Espresso",
      "3.50",
      "lib/images/espr.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Latte",
      "4.60",
      "lib/images/latt.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Ice Coffee",
      "4.80",
      "lib/images/icee.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Matcha Coffee",
      "5.50",
      "lib/images/matcha.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Frappe",
      "5.00",
      "lib/images/frap.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Tiramisu",
      "4.00",
      "lib/images/tiramisu.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Waffles",
      "3.30",
      "lib/images/waffles.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Cheesecake",
      "3.00",
      "lib/images/cheese.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Cupcake",
      "2.30",
      "lib/images/cupcake.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Donuts",
      "3.35",
      "lib/images/donuts.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
    [
      "Macaroons",
      "4.50",
      "lib/images/macaroon.png",
      const Color.fromARGB(255, 50, 50, 50),
    ],
  ];
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
