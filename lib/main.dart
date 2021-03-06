import 'package:flutter/material.dart';

import 'package:pokedex_test/ui/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pokedex Demo',
      home: HomeScreen(),
    );
  }
}
