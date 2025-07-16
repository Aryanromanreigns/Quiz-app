import 'package:flutter/material.dart';
import 'package:flutter_practice/quiz_app/data/question.dart';
import 'package:flutter_practice/quiz_app/models/answer_button.dart';

class QuestionScrreen extends StatefulWidget {
  const QuestionScrreen({super.key, required this.onselectedanswer});
  final void Function(String answer) onselectedanswer;
  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScrreen> {
  var currentquestionindex = 0;

  void answerquestion(selectedanswer)
  {
    widget.onselectedanswer(selectedanswer);
    setState(() {
      currentquestionindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[currentquestionindex];
    return SizedBox(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentquestion.text,
                style: TextStyle(
                  color: Color.fromARGB(255, 85, 85, 85),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              ...currentquestion.getshuffledanswe().map((answer) {
                return Answerbutton(
                    answertext: answer,
                    ontab: (){
                      answerquestion(answer);
                    }
                );
              }),
            ],
          ),
        ));
  }
}
