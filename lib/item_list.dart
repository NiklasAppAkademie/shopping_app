import 'package:flutter/material.dart';
import 'package:hello_world_4/item.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.items, required this.onClick});

  final List<String> items;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: items
            .map((item) => Item(
                  item: item,
                  onClick: onClick,
                ))
            .toList(),
      ),
    );
  }
}
