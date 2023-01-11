import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, String this.answerText);

  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          child: Text(answerText),
          onPressed: selectHandler,
        ));
  }
}
