import 'package:flutter/material.dart';
import 'package:travel/Booking.dart';
import 'package:travel/Component/Profile.dart';
import 'package:travel/ForgotPassword.dart';
import 'package:travel/Homepage.dart';
import 'package:travel/Login.dart';
import 'package:travel/Register.dart';
import 'package:travel/SplashScreen.dart';
import 'package:travel/User.dart';
import 'package:travel/widgets/BottomNav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
