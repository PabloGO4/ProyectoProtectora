import 'package:flutter/material.dart';
import 'package:protectora/ui/pages/home/home_page.dart'; // Importa el archivo home_page.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '[nombre_protectora]',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Usa tu HomePage como la página principal
    );
  }
}
