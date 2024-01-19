import 'package:flutter/material.dart';

class AssetsImages extends StatelessWidget {
  const AssetsImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/prog1.png',
            height: 400,
            width: 150,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Image.asset(
            'assets/images/prog2.png',
            height: 200,
            width: 150,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Image.asset(
            'assets/images/prog3.png',
            height: 200,
            width: 150,
          ),
        ),
      ],
    ));
  }
}
