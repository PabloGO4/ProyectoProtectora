import 'package:flutter/material.dart';

class NuestrosServiciosPage extends StatelessWidget {
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
        padding: const EdgeInsets.all(16.0), // Padding general
        child: Column(
          children: [
            // Título "Nuestros servicios"
            Text(
              'Nuestros servicios',
              style: TextStyle(
                fontSize: 24, // Tamaño del título adecuado
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            // Cuadrícula de servicios
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Dos columnas para tarjetas más grandes
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.9, // Hacer las tarjetas más altas y proporcionadas
                children: [
                  buildServiceCard(
                    icon: Icons.local_hospital,
                    label: 'Veterinarios',
                    onTap: () {
                      // Acción para Veterinarios
                    },
                  ),
                  buildServiceCard(
                    icon: Icons.event,
                    label: 'Eventos',
                    onTap: () {
                      // Acción para Eventos
                    },
                  ),
                  buildServiceCard(
                    icon: Icons.home,
                    label: 'Residencia',
                    onTap: () {
                      // Acción para Residencia
                    },
                  ),
                  buildServiceCard(
                    icon: Icons.cut,
                    label: 'Peluquería',
                    onTap: () {
                      // Acción para Peluquería
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget para construir las tarjetas de servicio
  Widget buildServiceCard({required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10), // Padding ligeramente ajustado
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20), // Bordes redondeados suaves
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 36, // Tamaño del icono ajustado
              color: Colors.black,
            ),
            SizedBox(height: 10), // Espacio entre icono y texto
            Text(
              label,
              style: TextStyle(
                fontSize: 16, // Tamaño del texto ajustado para mejor legibilidad
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
