import 'package:flutter/material.dart';

class NuestrosServiciosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuestros servicios'),
        backgroundColor: Color(0xFFD3D3D3),
      ),
      body: Center(
        child: Text(
          'Aquí puedes encontrar los servicios que ofrecemos.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
