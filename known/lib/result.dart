import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "C\'est malheureusement déjà fini...";
    if (resultScore <= 21) {
      resultText = 'Nous avons des goûts très différents. T\'es bizarre bg.';
    } else if (resultScore <= 30) {
      resultText = 'On est presque d\'accord';
    } else {
      resultText = 'T\'es vraiment trop bg, gros bg.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.red,
              side: BorderSide(color: Colors.red),
            ),
            child: Text('Recommencer le Quiz'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
