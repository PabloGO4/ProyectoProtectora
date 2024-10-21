import 'package:protectora/models/adopcion_model.dart';
import 'package:flutter/material.dart';


class AdoptarAnimalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adoptar animales'),
        backgroundColor: Color(0xFFD3D3D3),
      ),
      body: Center(
        child: Text(
          'Aquí puedes ver los animales que puedes adoptar.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
