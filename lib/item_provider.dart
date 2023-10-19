import 'package:flutter/material.dart';

class ItemProvider extends ChangeNotifier {
  final List<String> _items = ["Cola", "Apfel", "Wasser", "Bier"];

  List<String> get items => _items;
}
