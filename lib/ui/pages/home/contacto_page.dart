import 'package:flutter/material.dart';

class ContactoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacto'),
        backgroundColor: Color(0xFFD3D3D3),
      ),
      body: Center(
        child: Text(
          'Información de contacto.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
