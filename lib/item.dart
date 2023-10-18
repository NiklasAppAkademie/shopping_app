import 'package:flutter/material.dart';
import 'package:hello_world_4/shopping_provider.dart';
import 'package:provider/provider.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item});

  final String item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final provider = context.read<ShoppingProvider>();
        provider.add(item);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            item,
            style: TextStyle(fontSize: 26.0),
          ),
          color: Colors.yellow,
        ),
      ),
    );
  }
}
