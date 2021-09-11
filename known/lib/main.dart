import 'package:flutter/material.dart';

/*void main() {
  runApp(Known());
}*/

void main() => runApp(Known());

class Known extends StatelessWidget {
  void sayHello() {
    print('Hello !');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Known'),
        ),
        body: Column(
          children: [
            Text('hey'),
            RaisedButton(
              child: Text('Salut !'),
              onPressed: sayHello,
            ),
            RaisedButton(
              child: Text('Bonjour !'),
              onPressed: sayHello,
            ),
          ],
        ),
      ),
    );
  }
}
