import 'package:flutter/material.dart';

class PerfilAnimalPage extends StatelessWidget {
  final Map<String, String> animal;

  PerfilAnimalPage({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen del animal
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(animal['imagen'] ?? 'assets/images/default.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            // Información del animal
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    animal['nombre'] ?? 'Desconocido',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red),
                      SizedBox(width: 4),
                      Text(
                        animal['ubicacion'] ?? 'Ubicación no disponible',
                        style: TextStyle(fontSize: 16, color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      buildInfoCard(Icons.pets, 'Raza', animal['raza'] ?? 'Desconocido'),
                      buildInfoCard(Icons.transgender, 'Sexo', animal['sexo'] ?? 'Desconocido'),
                      buildInfoCard(Icons.cake, 'Nacimiento', animal['fecha_nacimiento'] ?? 'Desconocido'),
                      buildInfoCard(Icons.check, 'Vacunado', animal['vacunado'] ?? 'No disponible'),
                      buildInfoCard(Icons.straighten, 'Altura', animal['altura'] ?? 'No disponible'),
                      buildInfoCard(Icons.monitor_weight, 'Peso', animal['peso'] ?? 'No disponible'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Sobre mí',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    animal['historia'] ?? 'Sin historia disponible.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoCard(IconData icon, String title, String value) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, size: 28),
            SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
