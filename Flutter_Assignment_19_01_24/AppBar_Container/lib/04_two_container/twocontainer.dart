import 'package:flutter/material.dart';

class TwoContainer extends StatelessWidget {
  const TwoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.amber,
              height: 200,
              width: 200,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              color: Colors.blueAccent,
              height: 200,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}
