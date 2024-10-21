import 'package:flutter/material.dart';

class AdoptarAnimalesPage extends StatelessWidget {
  final String nombreProtectora;

  final List<Map<String, dynamic>> animales = [
    {
      "nombre": "Luna",
      "imagen": 'assets/images/Luna.png',
      "estado": "Madrid, España",
      "tipo": "Perro",
      "genero": "Hembra",
      "edad": 4,
    },
    {
      "nombre": "Max",
      "imagen": 'assets/images/Max.png',
      "estado": "Alicante, España",
      "tipo": "Perro",
      "genero": "Macho",
      "edad": 3,
    },
    {
      "nombre": "Mía",
      "imagen": 'assets/images/Mia.png',
      "estado": "Sevilla, España",
      "tipo": "Gato",
      "genero": "Hembra",
      "edad": 2,
    },
    {
      "nombre": "Rocky",
      "imagen": 'assets/images/Rocky.png',
      "estado": "Madrid, España",
      "tipo": "Perro",
      "genero": "Macho",
      "edad": 5,
    },
    {
      "nombre": "Simba",
      "imagen": 'assets/images/Simba.png',
      "estado": "Barcelona, España",
      "tipo": "Gato",
      "genero": "Macho",
      "edad": 6,
    },
    {
      "nombre": "Oliver",
      "imagen": 'assets/images/Oliver.png',
      "estado": "Valencia, España",
      "tipo": "Perro",
      "genero": "Macho",
      "edad": 7,
    },
  ];

  AdoptarAnimalesPage({required this.nombreProtectora});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          nombreProtectora, // Muestra el nombre de la protectora en el AppBar
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFD0A659),
      ),
      body: Stack(
        children: [
          // Texto de fondo "Adopciones"
          Center(
            child: Opacity(
              opacity: 0.1,
              child: Text(
                'Adopciones',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Cuadrícula de animales
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Dos columnas
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.8, // Ajuste del tamaño de la cuadrícula
              ),
              itemCount: animales.length,
              itemBuilder: (context, index) {
                final animal = animales[index];
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 60, // Imagen más grande
                      backgroundImage: AssetImage(animal['imagen']!),
                    ),
                    SizedBox(height: 10),
                    Text(
                      animal['nombre']!,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.redAccent,
                          size: 18,
                        ),
                        SizedBox(width: 4),
                        Text(
                          animal['estado']!,
                          style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
