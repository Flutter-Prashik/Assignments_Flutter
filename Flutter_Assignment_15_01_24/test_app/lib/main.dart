// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:test_app/Stateful/Assignment1/assignment1.dart';
import 'package:test_app/Stateful/Assignment2/assignment2.dart';
import 'package:test_app/Stateful/Assignment3/assignment3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment3(),
    );
  }
}
