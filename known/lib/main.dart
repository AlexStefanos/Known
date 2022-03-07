import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';

import './quiz.dart';
import './result.dart';

/*void main() {
  runApp(Known());
}*/

void main() => runApp(Known());

class Known extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _KnownState();
  }
}

class _KnownState extends State<Known> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'Quel est ton artiste préféré parmis ceux proposés ?',
        'answers': [
          {'text': 'Kendrick Lamar', 'score': 10},
          {'text': 'PNL', 'score': 8},
          {'text': 'Eminem', 'score': 8},
          {'text': 'Drake', 'score': 7},
        ]
      },
      {
        'questionText': 'Quel est ton acteur préféré parmis ceux proposés ?',
        'answers': [
          {'text': 'Jim Carrey', 'score': 10},
          {'text': 'Tom Hardy', 'score': 8},
          {'text': 'Ryan Gosling', 'score': 8},
          {'text': 'Emma Stone', 'score': 20},
        ]
      },
      {
        'questionText':
            'Est-ce que j\'ai fait que 3 questions pour le moment ?',
        'answers': [
          {'text': 'Oui', 'score': 1},
          {'text': 'oui', 'score': 5},
          {'text': 'oUi', 'score': 10},
          {'text': 'OUI', 'score': 20}
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Known'),
          backgroundColor: Colors.red,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
