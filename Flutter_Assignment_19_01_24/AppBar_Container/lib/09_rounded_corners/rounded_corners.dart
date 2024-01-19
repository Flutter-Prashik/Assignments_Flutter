import 'package:flutter/material.dart';

class CircularBorderContainer extends StatelessWidget {
  const CircularBorderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Border'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 4),
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber,
          ),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
