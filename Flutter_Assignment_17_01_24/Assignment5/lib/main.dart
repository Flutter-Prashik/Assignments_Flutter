import 'package:flutter/material.dart';
import 'package:test_app/assignment5/assignment5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment5(),
      debugShowCheckedModeBanner: false,
    );
  }
}
