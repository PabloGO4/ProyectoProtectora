import 'package:flutter/material.dart';

class DonacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donaciones'),
        backgroundColor: Color(0xFFD3D3D3),
      ),
      body: Center(
        child: Text(
          'Aquí puedes hacer una donación para apoyar nuestra causa.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
