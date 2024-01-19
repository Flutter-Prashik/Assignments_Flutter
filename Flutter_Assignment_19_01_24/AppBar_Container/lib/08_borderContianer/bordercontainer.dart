import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  const BorderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Border'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 10,
            ),
            color: Colors.yellowAccent,
          ),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
