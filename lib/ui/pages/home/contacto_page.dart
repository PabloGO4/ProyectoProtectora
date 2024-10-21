import 'package:flutter/material.dart';

class ContactoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '[Nombre protectora]',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFD0A659),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título "Contacto"
            Center(
              child: Text(
                'Contacto',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Información de contacto
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconRow(icon: Icons.location_on, label: 'Dirección'),
                SizedBox(height: 10),
                IconRow(icon: Icons.email, label: 'Email'),
                SizedBox(height: 10),
                IconRow(icon: Icons.phone, label: 'Teléfono'),
                SizedBox(height: 10),
                IconRow(icon: Icons.access_time, label: 'Horario'),
              ],
            ),
            SizedBox(height: 20),
            // Mapa
            Center(
              child: Image.asset(
                'assets/images/map_placeholder.png', // Cambia la ruta por la imagen de tu mapa
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            // Formulario de contacto
            Text(
              'Nombre:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Introduce tu nombre',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget para una fila con un icono y texto
class IconRow extends StatelessWidget {
  final IconData icon;
  final String label;

  IconRow({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 28,
          color: Colors.black,
        ),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
