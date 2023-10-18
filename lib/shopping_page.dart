import 'package:flutter/material.dart';
import 'package:hello_world_4/item_list.dart';
import 'package:hello_world_4/shopping_cart.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [ItemList(), ShoppingCart()],
        ),
      ),
    );
  }
}
