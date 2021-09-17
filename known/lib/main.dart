import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

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
    const questions = [
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
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
