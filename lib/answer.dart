import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(
          answerText, 
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}