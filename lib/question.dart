import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question,
        style: TextStyle(fontSize: 32),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(16.0),
      width: double.infinity,
    );
  }
}
