import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = [
    {
      'text': 'Pregunta 1!',
      'answers': [
        'Resp. 1',
        'Resp. 2',
        'Resp. 3',
        'Resp. 4',
      ]
    },
    {
      'text': 'Pregunta 2!',
      'answers': [
        'Resp. 1',
        'Resp. 2',
      ]
    },
  ];

  void _answerFunc() {
    setState(() {
      _questionIndex++;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Flutter App"),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['text'] as String),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerFunc, answer);
                  }).toList()
                ],
              )
            : Result(_restartQuiz),
      ),
    );
  }
}
