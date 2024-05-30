import 'package:flutter/material.dart';

import '../models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Purple Fash',
        price: '899,99',
        imagePath: 'lib/assets/snk1.png',
        description:
            'Premium quality construction.'),
    Shoe(
        name: 'Ivory Snake',
        price: '999,99',
        imagePath: 'lib/assets/snk2.png',
        description:
            'Ideal for both athletic and everyday.'),
    Shoe(
        name: 'Metallic Gold',
        price: '1699,99',
        imagePath: 'lib/assets/snk3.png',
        description:
            'Versatile for any casual outfit.'),
    Shoe(
        name: 'DT Red and Phantom',
        price: '999,99',
        imagePath: 'lib/assets/snk4.png',
        description:
            'Stylish and modern design.'),
    Shoe(
        name: 'White and Geode Teal',
        price: '999,99',
        imagePath: 'lib/assets/snk5.png',
        description:
            'Trendy and eye-catching details'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item form cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
