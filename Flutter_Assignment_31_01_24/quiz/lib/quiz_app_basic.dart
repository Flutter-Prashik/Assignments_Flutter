import 'package:flutter/material.dart';

class QuizAppBasic extends StatefulWidget {
  const QuizAppBasic({super.key});

  @override
  State<QuizAppBasic> createState() => _QuizAppBasicState();
}

class _QuizAppBasicState extends State<QuizAppBasic> {
  List<Map> allQuestions = [
    {
      'question': 'Who is the founder of microsoft',
      'options': ['Steve Jobs', 'Jeff Bezos', 'Bill Gates', 'Elon Musk'],
      'answerIndex': 2,
    },
    {
      'question': 'Who is the founder of Apple',
      'options': ['Steve Jobs', 'Jeff Bezos', 'Bill Gates', 'Elon Musk'],
      'answerIndex': 0,
    },
    {
      'question': 'Who is the founder of Amazon',
      'options': ['Steve Jobs', 'Jeff Bezos', 'Bill Gates', 'Elon Musk'],
      'answerIndex': 1,
    },
    {
      'question': 'Who is the founder of Tesla',
      'options': ['Steve Jobs', 'Jeff Bezos', 'Bill Gates', 'Elon Musk'],
      'answerIndex': 3,
    },
    {
      'question': 'Who is the founder of Google',
      'options': ['Steve Jobs', 'Lary Page', 'Bill Gates', 'Elon Musk'],
      'answerIndex': 1,
    }
  ];
  int clickedIndex = -1;
  bool questionScreen = true;
  int questionIndex = 0;
  bool flag1 = false;
  bool flag2 = false;
  bool flag3 = false;
  bool flag4 = false;

  Scaffold isQuestionScreen() {
    if (questionScreen) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'QuizApp',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Question : ${questionIndex + 1}/5",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              )
            ]),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestions[questionIndex]['question'],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    clickedIndex = 0;
                    flag1 = true;
                  });
                },
                style: ButtonStyle(backgroundColor: correctOption(flag1, 0)),
                child: buttonVal(
                  "A.${allQuestions[questionIndex]["options"][0]}",
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    clickedIndex = 1;
                    flag2 = true;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: correctOption(flag2, 1),
                ),
                child: buttonVal(
                  "B.${allQuestions[questionIndex]["options"][1]}",
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    clickedIndex = 2;
                    flag3 = true;
                  });
                },
                style: ButtonStyle(backgroundColor: correctOption(flag3, 2)),
                child: buttonVal(
                  "C.${allQuestions[questionIndex]["options"][2]}",
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  clickedIndex = 3;
                  flag4 = true;
                });
              },
              style: ButtonStyle(
                backgroundColor: correctOption(flag4, 3),
              ),
              child: buttonVal(
                'D.${allQuestions[questionIndex]["options"][3]}',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            questionIndex++;
            clickedIndex = -1;

            flag1 = flag2 = flag3 = flag4 = false;
            if (questionIndex >= 5) {
              questionScreen = false;
            }
          });
        }),
      );
    } else {
      return const Scaffold();
    }
  }

  MaterialStatePropertyAll<Color> correctOption(bool flag, int option) {
    return MaterialStatePropertyAll<Color>(
      (clickedIndex != -1 && flag)
          ? (allQuestions[questionIndex]['answerIndex'] == clickedIndex &&
                  option == clickedIndex)
              ? Colors.green
              : Colors.red
          : Colors.blue,
    );
  }

  Text buttonVal(String option) {
    return Text(
      option,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
