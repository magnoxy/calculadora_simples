import 'package:flutter/material.dart';
import 'package:calculadora_simples/Calculadora.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Simples',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ), // ThemeData
      home: Calculadora(),
    ); // MaterialApp
  }
}
