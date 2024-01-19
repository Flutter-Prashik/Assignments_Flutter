import 'package:flutter/material.dart';

class VerticalContainer extends StatelessWidget {
  const VerticalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vertiall container')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
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
                color: Colors.blue,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                color: Colors.red,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                color: Colors.orange,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                color: Colors.black,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                color: Colors.yellow,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                color: Colors.pink,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                color: Colors.cyanAccent,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                color: Colors.deepPurple,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                color: Colors.teal,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
