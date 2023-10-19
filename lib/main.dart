import 'package:flutter/material.dart';
import 'package:hello_world_4/item_provider.dart';
import 'package:hello_world_4/shopping_provider.dart';
import 'package:hello_world_4/shopping_page.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 550, name: MOBILE),
          const Breakpoint(start: 551, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ItemProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => ShoppingProvider(),
          )
        ],
        child: const ShoppingPage(),
      ),
    );
  }
}
