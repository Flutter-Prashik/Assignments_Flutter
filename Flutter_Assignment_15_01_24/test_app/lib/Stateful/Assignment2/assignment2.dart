import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool box1 = false;
  bool box2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Box'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    color: box1 ? Colors.amber : Colors.blueAccent,
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () => setState(() {
                            box1 = !box1;
                          }),
                      child: const Text('Box1'))
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                children: [
                  Container(
                    color: box2 ? Colors.amber : Colors.blueAccent,
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() {
                      box2 = !box2;
                    }),
                    child: const Text('Box2'),
                  ),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
