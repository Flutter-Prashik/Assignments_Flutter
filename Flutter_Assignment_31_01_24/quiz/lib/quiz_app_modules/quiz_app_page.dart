import 'package:flutter/material.dart';

import 'congratulations.dart';
import 'question_models.dart';

class QuizAppPage extends StatefulWidget {
  const QuizAppPage({super.key});

  @override
  State<StatefulWidget> createState() => _QuizAppPageState();
}

class _QuizAppPageState extends State<StatefulWidget> {
  List<QuestionModules> list = [
    const QuestionModules(
        question: 'What is the current year',
        options: ['2022', '2024', '1796', '1947'],
        answerOption: 1),
    const QuestionModules(
        question: 'Independance Year of India is',
        options: ['1947', '1756', '2018', '1897'],
        answerOption: 0),
    const QuestionModules(
        question: 'Which is sportShoes brand from below',
        options: ['Ray Ban', 'Neod', 'Samsung', 'Nike'],
        answerOption: 3),
    const QuestionModules(
        question: 'Who is called Missile Man',
        options: [
          'Sardar Wallabhbhai Patel',
          'Manmohan Singh',
          'APJ Abdul Kalam',
          'Narendra Modi'
        ],
        answerOption: 2),
    const QuestionModules(
        question: 'Flutter Codes are written in which language',
        options: ['Dart', 'Java', 'Python', 'JavaScript'],
        answerOption: 0),
  ];

  int questionIndex = 0;
  bool quizScreen = true;

  int optionChossen = -1;
  int result = 0;

  MaterialStatePropertyAll<Color?> check(int option) {
    if (optionChossen != -1) {
      if (option == list[questionIndex].answerOption) {
        if (option == optionChossen) {
          result++;
        }
        return const MaterialStatePropertyAll(Colors.green);
      } else if (option == optionChossen) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(Colors.white);
      }
    } else {
      return const MaterialStatePropertyAll(Colors.white);
    }
  }

  Padding costumButton(option) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: check(option)),
        onPressed: () {
          if (optionChossen == -1) {
            optionChossen = option;
          }
          setState(() {});
        },
        child: SizedBox(
          width: 250,
          child: Text(
            list[questionIndex].options[option],
            style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_open_rounded),
        title: const Text(
          'Quiz App',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
        ),
        backgroundColor: const Color.fromRGBO(43, 64, 86, 1),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.quiz_outlined),
          )
        ],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            optionChossen = -1;
            questionIndex++;
            if (questionIndex >= list.length) {
              quizScreen = false;
            }
          });
        },
        child: const Icon(Icons.navigate_next),
      ),
      body: (quizScreen)
          ? Container(
              color: const Color.fromRGBO(37, 42, 64, 1),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Question ${questionIndex + 1}/5',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${questionIndex + 1} . ${list[questionIndex].question}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    costumButton(0),
                    costumButton(1),
                    costumButton(2),
                    costumButton(3),
                  ],
                ),
              ),
            )
          : const Congratulations(),
    );
  }
}
