import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/model/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Nike",
        price: "230",
        imagePath: "assets/images/shoe1.jpg",
        description: "This is a very good looking shoe"),
    Shoe(
        name: "Adidas",
        price: "254",
        imagePath: "assets/images/shoe2.jpg",
        description: "This is a very good qualitu shoe"),
    Shoe(
        name: "Air Jordan",
        price: "250",
        imagePath: "assets/images/shoe3.jpg",
        description: "This is a very comfortable shoe")
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeCartItem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
