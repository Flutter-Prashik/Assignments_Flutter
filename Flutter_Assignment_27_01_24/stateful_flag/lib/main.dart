import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: const Icon(Icons.emoji_flags),
          title: const Text(
            'Indian Flag',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => debugPrint('clicked'),
              icon: const Icon(Icons.menu),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            _counter++;
            (_counter == 8) ? _counter = 1 : _counter = _counter;
          }),
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          child: const Icon(Icons.change_circle),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: (_counter >= 1)
              ? const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.orange,
                      Colors.white,
                      Colors.green,
                    ],
                  ),
                )
              : const BoxDecoration(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (_counter >= 2)
                        ? Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey,
                            ),
                            height: 400,
                            width: 10,
                          )
                        : Container(),
                    (_counter >= 3)
                        ? Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 250,
                                  color: Colors.orange,
                                ),
                                (_counter >= 4)
                                    ? Container(
                                        height: 50,
                                        width: 250,
                                        color: Colors.white,
                                        child: (_counter >= 5)
                                            ? Image.asset('assets/ac.png')
                                            : Container(),
                                      )
                                    : Container(),
                                (_counter >= 6)
                                    ? Container(
                                        height: 50,
                                        width: 250,
                                        color: Colors.green,
                                      )
                                    : Container()
                              ],
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
              (_counter >= 7)
                  ? Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/repday.jpg',
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
