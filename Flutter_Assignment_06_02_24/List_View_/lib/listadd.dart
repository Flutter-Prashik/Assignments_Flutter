import 'package:flutter/material.dart';

class ListAdd extends StatefulWidget {
  const ListAdd({super.key});
  @override
  State<StatefulWidget> createState() => _ListAddState();
}

class _ListAddState extends State<StatefulWidget> {
  List<String> nolist = [];
  int x = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: nolist.length,
        itemBuilder: ((context, index) {
          return Container(
            height: 20,
            width: 50,
            color: Colors.amber,
            margin: const EdgeInsets.all(10),
            child: Text(nolist[index]),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          int a = x++;
          nolist.add(a.toString());
        });
      }),
      appBar: AppBar(title: const Text('List Data')),
    );
  }
}
