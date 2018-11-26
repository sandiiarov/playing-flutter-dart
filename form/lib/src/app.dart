import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Form',
      home: new Scaffold(
        body: new LoginScreen(),
      ),
    );
  }
}
