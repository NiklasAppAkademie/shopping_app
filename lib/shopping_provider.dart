import 'package:flutter/material.dart';

class ShoppingProvider extends ChangeNotifier {
  final List<String> _selectedItems = [];

  List<String> get selectedItems => _selectedItems;

  void add(String item) {
    _selectedItems.add(item);
    notifyListeners();
  }
}
