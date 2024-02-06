import 'package:flutter/material.dart';
import 'package:listviewincrimentation/listadd.dart';
import 'package:listviewincrimentation/listlist.dart';
import 'package:listviewincrimentation/listview.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ListList());
  }
}
