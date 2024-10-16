import 'package:flutter/material.dart';
import 'ui/pages/home/home_page.dart'; // Asegúrate de que la ruta sea correcta

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Protectora',
      home: HomePage(),
    );
  }
}
