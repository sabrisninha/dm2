// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'contador.dart';
import 'curtir.dart';
import 'home.dart';
import 'login.dart';


void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      routes: {
        '/': (context) => Home(),
        '/contador': (context) => Contador(),
        '/curtir': (context) => Curtir(),
        '/cadastro': (context) => cadastro(),
        '/login': (context) => login(),
       
      },
    );
  }
}