import 'package:flutter/material.dart';

class ColaboraPage extends StatelessWidget {
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
          children: [
            // Título "Colabora"
            Text(
              'Colabora',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Cuadrícula de opciones de colaboración
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Dos columnas
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.1, // Ajuste para hacer las tarjetas más proporcionadas
                children: [
                  buildServiceCard(
                    icon: Icons.favorite, // Ícono para "Teaming"
                    label: 'Teaming',
                    onTap: () {
                      // Acción para Teaming
                    },
                  ),
                  buildServiceCard(
                    icon: Icons.volunteer_activism, // Ícono para "Donaciones"
                    label: 'Donaciones',
                    onTap: () {
                      // Acción para Donaciones
                    },
                  ),
                  buildServiceCard(
                    icon: Icons.pets, // Ícono para "Voluntariado"
                    label: 'Voluntariado',
                    onTap: () {
                      // Acción para Voluntariado
                    },
                  ),
                  buildServiceCard(
                    icon: Icons.handshake, // Ícono para "Apadrina"
                    label: 'Apadrina',
                    onTap: () {
                      // Acción para Apadrina
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

  // Widget para construir las tarjetas de opciones de colaboración
  Widget buildServiceCard({required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20), // Bordes redondeados suaves
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 36,
              color: Colors.black,
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
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
