import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Containers and SizedBox'),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.pink,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
