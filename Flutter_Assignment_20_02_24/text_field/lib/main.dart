import 'package:flutter/material.dart';
import 'package:text_field/portfolio/portfolio.dart';
import 'package:text_field/textfeild/textfield.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Portfolio(),
    );
  }
}
