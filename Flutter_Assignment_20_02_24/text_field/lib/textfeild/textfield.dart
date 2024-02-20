import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    print('--- In createState() ---');
    return _TextFieldDemo();
  }
}

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

  int count = 1;
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
                    count = 1;
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
