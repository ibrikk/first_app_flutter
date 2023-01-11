import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 15},
        {'text': 'White', 'score': 6}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Giraffe', 'Zebra', 'Crocodile', 'Whale']
    },
    {
      'questionText': 'What\'s your favourite movie?',
      'answers': ['Men In Black', 'Avatar', 'Titanic', 'Die Hard']
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length + 1) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My new App')),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionIndex,
            )
          : Result(_totalScore),
    ));
  }
}
