import 'package:bloc_login/src/screens/login_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log Me In!',
      home: LoginScreen(),
    );
  }
}
