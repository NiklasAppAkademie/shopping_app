import 'package:flutter/material.dart';
import 'package:hello_world_4/item_list.dart';
import 'package:hello_world_4/shopping_cart.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  List<String> items = ["Cola", "Apfel", "Wasser", "Bier"];
  List selectedItems = [];

  void selectItem(String item) {
    debugPrint("Item wurde zum Warenkorb hinzugefügt: $item");
    setState(() {
      selectedItems.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ItemList(
              items: items,
              onClick: selectItem,
            ),
            ShoppingCart(
              items: selectedItems,
            )
          ],
        ),
      ),
    );
  }
}
