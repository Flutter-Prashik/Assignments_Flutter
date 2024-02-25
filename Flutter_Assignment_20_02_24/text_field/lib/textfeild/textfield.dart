import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    print('--- In createState() ---');
    return _TextFieldDemo();
  }
}

int count = 1;
bool secscreen = true;

class _TextFieldDemo extends State<TextFieldDemo> {
  void initState() {
    super.initState();
    print('---In initState()---');
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
    print('---In didChangeDependencies()---');
  }

  void dispose() {
    super.dispose();
    print('---In dispose()---');
  }

  void deactivate() {
    super.deactivate();
    print('---In deactivate()---');
  }

  @override
  Widget build(BuildContext context) {
    print('---In build()---');
    if (secscreen) {
      return const Screen1();
    } else {
      return Screen2();
    }
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    print('---In build()---');
    return Scaffold(
      body: const Center(
        child: Text('Second Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              count = 1;
              secscreen = true;
            },
          );
        },
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  void dispose() {
    super.dispose();
    print('---In dispose()---');
  }

  void deactivate() {
    super.deactivate();
    print('---In deactivate()---');
  }

  @override
  Widget build(BuildContext context) {
    print('---In build()---');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Statefull flow "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: (count > 1) ? Colors.blue : Colors.green,
              height: 200,
              width: 200,
            ),
            Container(
              color: (count > 2) ? Colors.yellow : Colors.black,
              height: 200,
              width: 200,
            ),
            Container(
              color: (count > 3) ? Colors.blueGrey : Colors.purple,
              height: 200,
              width: 200,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  print("--- In setState() ---");
                  count++;
                  if (count > 4) {
                    secscreen = false;
                  }
                });
              },
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
