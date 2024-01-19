import 'package:flutter/material.dart';

class CenterTitle extends StatelessWidget {
  const CenterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Appbar'),
        actions: const [
          Icon(Icons.menu),
        ],
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
