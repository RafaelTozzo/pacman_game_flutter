import 'package:flutter/material.dart';
import 'package:teste_tecnico02_3_escribo/home_page.dart';

const double tileSize = 16;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pacman Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(stage: 1,),
    );
  }
}

