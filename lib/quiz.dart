import 'package:flutter/material.dart';
import 'package:my_app/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function(int) answerQuestion;
  final List<Map<String, Object>> questions;
  final int index;
  const Quiz(this.answerQuestion, this.questions, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(questions[index]["questionText"] as String),
        ...(questions[index]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer["score"] as int), answer["text"] as String);
        }).toList()
      ],
    );
  }
}
