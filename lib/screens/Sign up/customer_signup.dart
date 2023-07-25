// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample/screens/Sign%20up/sign_up.dart';
// import 'package:sample/screens/sign_up.dart';

class CustomerSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.teal,
        title: Text('Customer Sign Up'),
      ),
      body: SignUpApp()

      );
  }
}