import 'package:bloc_login/src/mixins/validation_mixin.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  // final _formState = GlobalKey<FormState>();
  final GlobalKey<FormState> _formState = GlobalKey();

  String password;
  String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: _formState,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            SizedBox(height: 25.0),
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
        labelText: "Email",
        hintText: "you@example.com",
      ),
      validator: validateEmail,
      onSaved: (String fieldEmail) {
        email = fieldEmail;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password",
      ),
      obscureText: true,
      validator: validatePassword,
      onSaved: (String fieldPassword) {
        password = fieldPassword;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text("Submit!"),
      onPressed: () {
        if (_formState.currentState.validate()) {
          _formState.currentState.save();
        }
      },
    );
  }
}
