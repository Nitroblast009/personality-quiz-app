import 'package:flutter/material.dart';
import './quiz.dart';
import './res.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      "questionText": "What is your favourite colour?",
      "answers": [
        {"text": "Orange", "score": 1},
        {"text": "Red", "score": 3},
        {"text": "Green", "score": 10},
        {"text": "Blue", "score": 5},
      ],
    },
    {
      "questionText": "What is your favourite animal?",
      "answers": [
        {"text": "Cat", "score": 1},
        {"text": "Dog", "score": 3},
        {"text": "Snake", "score": 10},
        {"text": "Rabbit", "score": 5},
      ],
    },
    {
      "questionText": "What is your favourite subject in school?",
      "answers": [
        {"text": "Math", "score": 10},
        {"text": "English", "score": 5},
        {"text": "Science", "score": 1},
        {"text": "Art", "score": 3},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
    this._questionIndex = 0;
    this._totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    this._totalScore += score;

    setState(() {
      this._questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Best Personality Quiz"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(this._answerQuestion, this._questions, this._questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
