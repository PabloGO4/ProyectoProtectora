import 'package:flutter/material.dart';

class VeterinariosCercanosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Veterinarios cercanos'),
        backgroundColor: Color(0xFFD3D3D3),
      ),
      body: Center(
        child: Text(
          'Encuentra los veterinarios más cercanos.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
