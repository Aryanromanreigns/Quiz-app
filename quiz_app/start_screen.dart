import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});
  final void Function() startquiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 300, color: Color.fromARGB(150, 255, 255, 255)),
          SizedBox(
            height: 80,
          ),
          Text('Aaye suru krte hai maja aaye ga'),
          SizedBox(
            height: 80,
          ),
          OutlinedButton.icon(
            onPressed: startquiz,
            label: Text('Start Quiz'),
            icon: Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
