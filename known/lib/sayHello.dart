import 'package:flutter/material.dart';

class SayHello extends StatelessWidget {
  final String sayHelloText;

/* si on fait un constructeur 'classique', on a une erreur car on utilise une
final String. Donc on ne peut lui 'réattribuer' la valeur donnée indirectement
à travers le constructeur*/
  SayHello(this.sayHelloText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        sayHelloText,
        style: TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
