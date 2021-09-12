import 'package:flutter/material.dart';

import './sayHello.dart';

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
  var _greetingsIndex = 0;

  void _sayHello() {
    setState(() {
      _greetingsIndex = _greetingsIndex + 1;
    });
    print(_greetingsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var greetings = [
      'Coucou !',
      'Salut !',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Known'),
        ),
        body: Column(
          children: [
            /*
            Text('hey'),
            Text(
              greetings[_greetingsIndex],
            ),
            */
            SayHello(
              greetings[_greetingsIndex],
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Salut !'),
              onPressed: () => print('Nice to meet you !'),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Bonjour !'),
              onPressed: () => {
                print('Hi !'),
                print('Hey !'),
              },
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Bonjour !'),
              onPressed: _sayHello,
            ),
          ],
        ),
      ),
    );
  }
}
