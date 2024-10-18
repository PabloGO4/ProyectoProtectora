import 'package:flutter/material.dart';

class AnimalesPerdidosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animales perdidos'),
        backgroundColor: Color(0xFFD3D3D3),
      ),
      body: Center(
        child: Text(
          'Aquí puedes ver los animales que se han perdido.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
