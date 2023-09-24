import 'package:flutter/material.dart';
import 'package:hackmty/LoginPage.dart';
import 'package:hackmty/Home.dart';
import 'package:hackmty/chat.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Chat(), 
        ),
      ),
    );
  }
}