import 'package:flutter/material.dart';
import 'package:test_app/10_selected_corners_round/selected_corners_round.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SelectedCircularBorderContainer());
  }
}
