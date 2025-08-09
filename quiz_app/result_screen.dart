import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/quiz_app/data/question.dart';
import 'package:flutter_practice/quiz_app/question_summary.dart';

class Resultscreen extends StatelessWidget{
  const Resultscreen({super.key , required this.chosenanswer});
  final List<String>chosenanswer;

  List<Map<String,Object>>getsummarydata()
  {
    final List<Map<String,Object>> summary = [];

    for(var i = 0 ; i < chosenanswer.length ; i++)
      {
        summary.add({
          'question_index':i+1,
          'question':questions[i].text,
          'correct_answer': questions[i].answer[0],
          'user_answer':chosenanswer[i]


        });
      }


    return summary;

  }


  @override
  Widget build( context) {
    final summarydata = getsummarydata();
    final numtotalquestion = questions.length;
    final numcorrectquestion = summarydata.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length;
   return SizedBox(
     width: double.infinity,
     child: Container(
       margin: EdgeInsets.all(40),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('you answer $numcorrectquestion out of $numtotalquestion question correctly'),
           SizedBox(height: 30,),
           QuestionSummary(summarydata),
           SizedBox(height: 30,),
           TextButton(onPressed: (){},
               child: Text('Restart quiz'))
         ],
       ),
     ),
   );
  }

}