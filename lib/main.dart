import 'package:flutter/material.dart';
import 'package:nubank/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      theme: ThemeData(primaryColor: Colors.deepPurple),
      home: const HomePage(),

      );
  }
}
