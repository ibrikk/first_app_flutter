import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    if (questionIndex > 1) {
      setState(() {
        questionIndex = 0;
      });
    } else {
      setState(() {
        questionIndex += 1;
      });
      print(questionIndex);
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
              Text(questions[questionIndex]),
              // RaisedButton(child: Text('Answer 1'), onPressed: null),
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 1')),
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 2')),
              ElevatedButton(onPressed: answerQuestion, child: Text('Answer 3'))
            ],
          )),
    );
  }
}
