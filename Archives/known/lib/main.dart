import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Known',
          style: TextStyle(
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: Row(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text('Titre'),
                Image(
                  image: AssetImage("assets/imgs/movies/skyfall.jpg"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
