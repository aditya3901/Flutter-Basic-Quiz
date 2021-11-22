import 'package:flutter/material.dart';
import 'package:my_app/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 6},
        {"text": "Green", "score": 4},
        {"text": "Blue", "score": 2}
      ],
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Dog", "score": 10},
        {"text": "Horse", "score": 6},
        {"text": "Cat", "score": 4},
        {"text": "Rabbit", "score": 2}
      ],
    },
    {
      "questionText": "What's your favourite song?",
      "answers": [
        {"text": "Lucid Dreams", "score": 10},
        {"text": "Destiny Neffex", "score": 6},
        {"text": "Cold Maroon 5", "score": 4},
        {"text": "Tonight John Legend", "score": 2}
      ],
    },
  ];

  var _index = 0;
  var _totalScore = 0;
  void answerQuestion(int score) {
    if (_index < _questions.length) {
      _totalScore += score;
      setState(() {
        _index++;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: Center(
          child: (_index < _questions.length)
              ? Quiz(answerQuestion, _questions, _index)
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
