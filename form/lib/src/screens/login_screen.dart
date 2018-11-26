import 'package:flutter/material.dart';

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
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'your@example.com',
      ),
      // validator: validateEmail,
      // onSaved: (String value) => email = value,
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      // validator: validatePassword,
      // onSaved: (String value) => password = value,
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Submit'),
      onPressed: () {},
    );
  }
}
