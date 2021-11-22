import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int resultScore;
  const Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var defaultText = "You did it!";
    if (resultScore >= 25) {
      defaultText = "You're awesome!";
    } else if (resultScore < 25 && resultScore >= 15) {
      defaultText = "Yeah! You're fine.";
    } else {
      defaultText = "You're a shitty person!";
    }
    return defaultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          "Your Score : $resultScore",
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 100,
        ),
        SizedBox(
          width: 100,
          height: 60,
          child: ElevatedButton(
            onPressed: resetQuiz,
            child: const Text(
              "Retake",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
