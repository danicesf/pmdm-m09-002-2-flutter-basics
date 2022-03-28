import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback handleRestartQuiz;

  Result(this.handleRestartQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: handleRestartQuiz,
        textColor: Colors.red,
        child: Text("Restart!"),
      ),
    );
  }
}
