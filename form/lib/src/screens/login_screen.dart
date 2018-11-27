import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
      child: new Form(
        child: new Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            new Container(margin: const EdgeInsets.all(10.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return new StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return new TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: new InputDecoration(
            labelText: 'Email',
            hintText: 'your@example.com',
            errorText: snapshot.error,
          ),
          onChanged: bloc.changeEmail,
        );
      },
    );
  }

  Widget passwordField() {
    return new StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return new TextField(
          obscureText: true,
          decoration: new InputDecoration(
            labelText: 'Password',
            hintText: 'Password',
            errorText: snapshot.error,
          ),
          onChanged: bloc.changePassword,
        );
      },
    );
  }

  Widget submitButton() {
    return new RaisedButton(
      child: new Text('Submit'),
      onPressed: () {},
    );
  }
}
