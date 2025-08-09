import 'package:flutter/cupertino.dart';

class QuestionSummary extends StatelessWidget{
  const QuestionSummary(this.summarydata ,{super.key});
  final List<Map<String , Object>>summarydata;


  @override
  Widget build( context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map((data){
            return Row(
             children: [
               Text(data['question_index'] as String),
               Expanded(
                 child: Column(
                   children: [
                     Text(data['question'] as String),
                     SizedBox(height: 5,),
                     Text(data['user_answer'] as String),
                     Text(data['correct_answer'] as String),
                   ],
                 ),
               )
             ],
            );
          }).toList(),
        ),
      ),
    );
  }

}