import 'package:flutter/material.dart';
import 'package:travel/Register.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Register()), // Replace 'HomePage' with your main screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // You can customize the splash screen UI here
      body: Center(
        child: Icon(Icons.abc,
            size: 150), // You can use any widget as your splash screen
      ),
    );
  }
}
