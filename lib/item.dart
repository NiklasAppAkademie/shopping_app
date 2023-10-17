import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.onClick});

  final String item;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(item),
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
