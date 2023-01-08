import 'package:flutter/material.dart';
import './question.dart';

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
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite movie?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My new App')),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              // RaisedButton(child: Text('Answer 1'), onPressed: null),
              ElevatedButton(
                  onPressed: _answerQuestion, child: Text('Answer 1')),
              ElevatedButton(
                  onPressed: _answerQuestion, child: Text('Answer 2')),
              ElevatedButton(
                  onPressed: _answerQuestion, child: Text('Answer 3'))
            ],
          )),
    );
  }
}
