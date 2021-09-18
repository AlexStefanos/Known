import 'package:flutter/material.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'Quels sont tes artistes musicaux préférés ?',
        'answers': ['Kendrick Lamar', 'PNL', 'Eminem', 'Drake']
      },
      {
        'questionText': 'Quels sont tes acteurs préférés ?',
        'answers': ['Jim Carrey', 'Tom Hardy', 'Ryan Gosling', 'Emma Stone']
      },
      {
        'questionText':
            'Est-ce que j\'ai fait que 3 questions pour le moment ?',
        'answers': ['Oui', 'oui', 'oUi', 'OUI']
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
            : Result(),
      ),
    );
  }
}
