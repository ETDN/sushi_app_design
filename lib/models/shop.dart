import 'package:flutter/material.dart';
import 'package:sushi_app_design/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "Salmon sushi",
        price: "12.00",
        imagePath: "lib/images/nigiri.png",
        rating: "4.9"),
    Food(
        name: "Tuna",
        price: "15.00",
        imagePath: "lib/images/maki.png",
        rating: "4.5"),
    Food(
        name: "Salmon Avocado",
        price: "18.00",
        imagePath: "lib/images/uramaki.png",
        rating: "5.0"),
  ];

  // customer cart
  List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
