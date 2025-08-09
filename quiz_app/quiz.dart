import 'package:flutter/material.dart';
import 'package:flutter_practice/quiz_app/data/question.dart';
import 'package:flutter_practice/quiz_app/question_screen.dart';
import 'package:flutter_practice/quiz_app/result_screen.dart';
import 'start_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activescreen;
  List<String> selectedanswer = [];

  @override
  void initState() {
    activescreen = StartScreen(switchscreen);
    super.initState();
  }

  void choosenanswer(answer)
  {
    selectedanswer.add(answer);
    if(selectedanswer.length == questions.length)
      {
        setState(() {
          activescreen = Resultscreen(chosenanswer: selectedanswer  ,);
        });
      }
  }

  void switchscreen() {
    setState(() {
      activescreen = QuestionScrreen(onselectedanswer: choosenanswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 168, 213, 186), // soft green
                Color.fromARGB(255, 245, 245, 240), // off-white
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activescreen,
        ),
      ),
    );
  }
}
