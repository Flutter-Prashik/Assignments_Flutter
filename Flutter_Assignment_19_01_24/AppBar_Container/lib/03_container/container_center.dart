import 'package:flutter/material.dart';

class ContainerCenter extends StatelessWidget {
  const ContainerCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Core2web !'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 360,
          color: Colors.blue,
        ),
      ),
    );
  }
}
