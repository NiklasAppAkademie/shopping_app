import 'package:flutter/material.dart';
import 'package:hello_world_4/shopping_provider.dart';
import 'package:provider/provider.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ShoppingProvider>(builder: (context, data, child) {
      return Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(color: Colors.red),
        child: Text(
          "Jetzt ${data.selectedItems.length.toString()} Artikel Kaufen",
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      );
    });
  }
}
