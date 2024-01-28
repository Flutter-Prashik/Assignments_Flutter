import 'package:flutter/material.dart';

class IndianFlag extends StatelessWidget {
  const IndianFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Indian Flag',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
          ),
          shadowColor: Colors.black,
          backgroundColor: Colors.orange,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.orange,
                Colors.white,
                Colors.green,
              ],
            ),
          ),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          height: 450,
                          width: 8,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 75,
                          width: 250,
                          color: Colors.orange,
                        ),
                        Container(
                          height: 75,
                          width: 250,
                          color: Colors.white,
                          child: Center(
                            child: Image.asset('assets/ac.png'),
                          ),
                        ),
                        Container(
                          height: 75,
                          width: 250,
                          color: Colors.green,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 175,
                child: Image.asset('assets/repday.jpg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
