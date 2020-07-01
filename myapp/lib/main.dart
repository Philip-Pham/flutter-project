import 'package:flutter/material.dart';
import './TicTacToe.dart';
import './ColorGame.dart';

void main() {runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BaseApp(),
      routes: <String, WidgetBuilder> {
        '/TicTacToe' : (context) =>TicTacToe(),
        '/ColorGame' : (context) =>ColorGame(),
      },
    );
  }
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Games"),),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text("Tic Tac Toe"),
                color: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, '/TicTacToe');
                },
              ),
              FlatButton(
                child: Text("Color Game"),
                color: Colors.red,
                onPressed: () {
                  Navigator.pushNamed(context, '/ColorGame');
                },
              ),
            ],
          ),
        )
      );
  }
}

