import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const QuizApp();
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<StatefulWidget> createState() => _QuizApp();
}

class _QuizApp extends State<QuizApp> {
  int queNo = 1;
  int score = 0;
  String question = 'What is ur name ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              queNo++;
              if (queNo == 11) {
                queNo = 1;
              }
            });
          },
          child: const Text('Next'),
        ),
        appBar: AppBar(
          title: const Text('Quiz App'),
          actions: const [Icon(Icons.menu)],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Score : $score/10')],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Que : $queNo : $question')],
            ),
          ),
          const Card(
            child: ListTile(
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.album_rounded),
              title: Text('Option 1'),
            ),
          ),
          const Card(
            child: ListTile(
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.album_rounded),
              title: Text('Option 2'),
            ),
          ),
          const Card(
            child: ListTile(
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.album_rounded),
              title: Text('Option 3'),
            ),
          ),
          const Card(
            child: ListTile(
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.album_rounded),
              title: Text('Option 4'),
            ),
          ),
        ]),
      ),
    );
  }
}
