import 'package:flutter/material.dart';
import 'package:todo_breakdown/bottomsheet/bottomsheet.dart';
import 'package:todo_breakdown/card/card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomSheetDemo(),
    );
  }
}
