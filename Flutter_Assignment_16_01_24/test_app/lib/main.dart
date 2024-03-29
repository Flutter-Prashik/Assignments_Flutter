import 'package:flutter/material.dart';
import 'package:test_app/widget/widget_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: WidgetScreen(),
      ),
    );
  }
}
