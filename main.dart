import 'package:flutter/material.dart';
import 'package:hack_mty/Home.dart';
import 'package:hack_mty/LoginPage.dart';
import 'package:hack_mty/Perfil.dart';
import 'package:hack_mty/chat.dart';
import 'package:hack_mty/crear_cuenta.dart';
import 'package:hack_mty/pruebas.dart';

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
          child: LoginPage(), // Usa LoginForm aquí
        ),
      ),
    );
  }
}