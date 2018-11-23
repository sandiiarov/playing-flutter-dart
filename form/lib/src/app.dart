import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  int counter = 1;

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Images'))),
    );
  }
}
