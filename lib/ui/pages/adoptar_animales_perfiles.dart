import 'package:flutter/material.dart';

class AdoptarAnimalesPerfilesPage extends StatelessWidget {
  final List<Map<String, String>> animales = [
    {
      "nombre": "Luna",
      "imagen": 'assets/images/Luna.png',
      "ubicacion": "Madrid, España",
      "raza": "Husky",
      "sexo": "Hembra",
      "fecha_nacimiento": "02-12-2022",
      "vacunado": "Sí",
      "altura": "60 cm",
      "peso": "25 kg",
      "historia": "Luna es una perrita muy cariñosa y juguetona..."
    },
    {
      "nombre": "Max",
      "imagen": 'assets/images/Max.png',
      "ubicacion": "Alicante, España",
      "raza": "Golden Retriever",
      "sexo": "Macho",
      "fecha_nacimiento": "15-05-2021",
      "vacunado": "Sí",
      "altura": "70 cm",
      "peso": "30 kg",
      "historia": "Max es un perro muy amigable y le encanta jugar con niños..."
    },
    // Añade más animales aquí si es necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '[Nombre Protectora]',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFD0A659),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              'Adopciones',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Dos columnas
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: animales.length,
                itemBuilder: (context, index) {
                  final animal = animales[index];
                  return GestureDetector(
                    onTap: () {
                      // Navega a la página de perfil del animal
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PerfilAnimalPage(animal: animal),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(animal['imagen'] ?? 'assets/images/default.png'), // Imagen local
                        ),
                        SizedBox(height: 8),
                        Text(
                          animal['nombre'] ?? 'Desconocido',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 16,
                            ),
                            SizedBox(width: 4),
                            Text(
                              animal['ubicacion'] ?? 'Ubicación no disponible',
                              style: TextStyle(fontSize: 12, color: Colors.redAccent),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
