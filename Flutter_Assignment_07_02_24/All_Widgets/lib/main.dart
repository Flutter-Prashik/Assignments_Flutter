import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: WidgetScreen());
  }
}

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key});

  @override
  State<StatefulWidget> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<StatefulWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Widgets Used !'),
        actions: const [Icon(Icons.menu)],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.amber,
                  height: 20,
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.amber,
                  height: 20,
                  width: 20,
                ),
                const Text('This is a row and container in it'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.network(
                    'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              ),
              // Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset('assets/ac.png'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const NewPage()));
                },
                child: const Text('navigate'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Click on the floating action button to increase the counter'),
              const SizedBox(
                height: 10,
              ),
              Text('$counter '),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecPage()));
                  },
                  icon: Icon(Icons.next_plan_outlined))
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          counter++;
        });
      }),
    );
  }
}

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewPageState();
  }
}

class _NewPageState extends State<NewPage> {
  List<int> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('new tab')),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => SizedBox(
          height: 20,
          width: 20,
          child: Center(child: Text('$index')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.add(1);
          });
        },
      ),
    );
  }
}

class SecPage extends StatefulWidget {
  const SecPage({super.key});

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single Chile Scroll View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.orange,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.pink,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
