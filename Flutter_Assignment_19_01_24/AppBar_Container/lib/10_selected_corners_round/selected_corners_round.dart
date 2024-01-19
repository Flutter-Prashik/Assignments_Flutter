import 'package:flutter/material.dart';

class SelectedCircularBorderContainer extends StatelessWidget {
  const SelectedCircularBorderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Border'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 4),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.amber,
          ),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
