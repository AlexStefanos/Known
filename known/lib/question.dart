import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';

class Question extends StatelessWidget {
  final String questionText;

/* si on fait un constructeur 'classique', on a une erreur car on utilise une
final String. Donc on ne peut lui 'réattribuer' la valeur donnée indirectement
à travers le constructeur*/
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
