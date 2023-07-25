// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample/screens/Sign%20up/options.dart';
// import 'package:sample/screens/options.dart';

void main() {
  runApp(RentingApp());
}

class RentingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay to show the splash screen for a few seconds
    Future.delayed(Duration(seconds: 3), () {
      // After the delay, navigate to the main screen of the app
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUpAppOpt()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, // You can change the background color to your preference
      body: Center(
        child: Text(
          'Renting App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


