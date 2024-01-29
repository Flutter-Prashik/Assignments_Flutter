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
  State<StatefulWidget> createState() => _MyHomePage();
}

class _MyHomePage extends State<StatefulWidget> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: (_counter >= 1)
              ? const Text('Prashik Portfolio')
              : const Text('Portfolio'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(27, 18, 18, 100),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(
            () {
              _counter++;
            },
          ),
          child: const Icon(Icons.arrow_forward_sharp),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                (_counter >= 2)
                    ? Row(
                        children: [
                          const Text(
                            'Name : ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          (_counter >= 3)
                              ? const Text(
                                  ' Prashik Wankhade',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              : const SizedBox(),
                        ],
                      )
                    : const Row(),
                (_counter >= 4)
                    ? Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Image.asset('assets/myimg.jpg'),
                      )
                    : const SizedBox(),
                (_counter >= 5)
                    ? Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            const Text(
                              'College : ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            (_counter >= 6)
                                ? const Text(
                                    'Sinhgad College Of Enginnering',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                : const SizedBox()
                          ],
                        ),
                      )
                    : const SizedBox(),
                (_counter >= 7)
                    ? Image.network(
                        'https://ik.imagekit.io/lyzj6ywpw/logo/sinhgad-college-of-engineering-scoe-vadgaon-pune.png')
                    : const SizedBox(),
                (_counter >= 8)
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            const Text(
                              'Dream Company : ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            (_counter >= 9)
                                ? const Text(
                                    'Microsoft',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      )
                    : const SizedBox(),
                (_counter >= 10)
                    ? Image.network(
                        'https://www.pixartprinting.co.uk/blog/wp-content/uploads/2023/08/Cover-Microsoft.jpg')
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
