import 'package:flutter/material.dart';

class QuizAppNoob extends StatefulWidget {
  const QuizAppNoob({super.key});

  @override
  State<StatefulWidget> createState() => _QuizApp();
}

class _QuizApp extends State<QuizAppNoob> {
  int queNo = 1;
  int score = 0;
  List<List<String>> que = [
    [
      'Who developed the Flutter Framework and continues to maintain it today?',
      'Google',
      'Facebook',
      'Microsoft',
      'Adobe',
    ],
    [
      'Which programming language is used to build Flutter applications?',
      'Dart',
      'Java',
      'Swift',
      'Kotlin'
    ],
    [
      'How many types of widgets are there in Flutter?',
      'Two',
      'Three',
      'Four',
      'Five'
    ],
    [
      'When building for iOS, Flutter is restricted to an __ compilation strategy',
      'Just-in-Time (JIT)',
      'Interpreted',
      'Dynamic',
      'Ahead-of-Time (AOT)',
    ],
    [
      'A sequence of asynchronous Flutter events is known as a:',
      'Stream',
      'Coroutine',
      'Callback',
      'Future'
    ],
    [
      'Access to a cloud database through Flutter is available through which service?',
      'Firebase',
      'AWS DynamoDB',
      'Microsoft Azure Cosmos DB',
      'Google Cloud Firestore'
    ],
    [
      'What are some key advantages of Flutter over alternate frameworks?',
      'Cross-platform development',
      'Hot reload feature',
      'Rich set of customizable widgets',
      'Strong community and support'
    ],
    [
      'What element is used as an identifier for components when programming in Flutter?',
      'Key',
      'ID',
      'Tag',
      'WidgetID'
    ],
    [
      'What type of test can examine your code as a complete system?',
      'Unit testing',
      'Integration testing',
      'Widget testing',
      'System testing'
    ],
    [
      'What type of Flutter animation allows you to represent real-world behavior?',
      'Tween Animation',
      'Physics-based Animation',
      'Curved Animation',
      'Rotation Animation'
    ],
  ];

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
              if (queNo >= 11) {
                queNo = 10;
              }
            });
          },
          child: const Text('Next'),
        ),
        appBar: AppBar(
          title: const Text('Quiz App'),
          actions: const [Icon(Icons.menu)],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Score : $score/10')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                  height: 40,
                  child: Text('Que : $queNo : ${que[queNo - 1][0]}')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {}, child: Text('A : ${que[queNo - 1][1]}')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {}, child: Text('B : ${que[queNo - 1][2]}')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {}, child: Text('C : ${que[queNo - 1][3]}')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {}, child: Text('D : ${que[queNo - 1][4]}')),
            ),
          ],
        ),
      ),
    );
  }
}
