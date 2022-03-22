import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleAnswer;
  final String answer;
  Answer(this.handleAnswer, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(answer),
        color: Colors.green,
        onPressed: handleAnswer,
        textColor: Colors.white,
      ),
      width: double.infinity,
    );
  }
}
