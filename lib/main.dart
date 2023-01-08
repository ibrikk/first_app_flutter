import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  void _answerQuestion() {
    if (_questionIndex > 1) {
      setState(() {
        _questionIndex = 0;
      });
    } else {
      setState(() {
        _questionIndex += 1;
      });
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
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
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My new App')),
          body: Column(
            children: [
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
