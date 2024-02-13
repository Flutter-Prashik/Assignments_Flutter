import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Styling'),
          backgroundColor: Colors.purple[900],
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue,
                  border: Border.all(color: Colors.black, width: 5),
                  gradient: const LinearGradient(
                      colors: [Colors.red, Colors.green], stops: [0.3, 0.5]),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.purple,
                        offset: Offset(30, 30),
                        blurRadius: 8),
                    BoxShadow(
                        color: Colors.red,
                        offset: Offset(20, 20),
                        blurRadius: 8),
                    BoxShadow(
                        color: Colors.green,
                        offset: Offset(10, 10),
                        blurRadius: 8),
                  ]),
              height: 300,
              width: 300,
            ),
          ),
        ),
      ),
    );
  }
}
