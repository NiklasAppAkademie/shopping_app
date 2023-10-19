import 'package:flutter/material.dart';
import 'package:hello_world_4/item.dart';
import 'package:hello_world_4/item_provider.dart';
import 'package:provider/provider.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemProvider>(builder: (context, data, child) {
      return Expanded(
        child: ListView(
          children: data.items
              .map((item) => Item(
                    item: item,
                  ))
              .toList(),
        ),
      );
    });
  }
}
