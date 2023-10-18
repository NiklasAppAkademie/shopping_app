import 'package:flutter/material.dart';

class ShoppingProvider extends ChangeNotifier {
  final List<String> _selectedItems = [];
  final List<String> _items = ["Cola", "Apfel", "Wasser", "Bier"];

  List<String> get selectedItems => _selectedItems;
  List<String> get items => _items;

  void add(String item) {
    _selectedItems.add(item);
    notifyListeners();
  }
}
