import 'package:flutter/material.dart';

class AnimalesPerdidosPage extends StatelessWidget {
  final List<Map<String, String>> animalesPerdidos = [
    {
      "nombre": "Toby",
      "imagen": 'assets/images/Toby.png',
      "ultima_vista": "15/08/2024",
      "ubicacion": "Madrid, España"
    },
    {
      "nombre": "Cleo",
      "imagen": 'assets/images/Cleo.png',
      "ultima_vista": "10/09/2024",
      "ubicacion": "Madrid, España"
    },
  ];

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
            // Texto "Animales perdidos"
            Text(
              'Animales perdidos',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Lista de animales perdidos
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.7,
                ),
                itemCount: animalesPerdidos.length,
                itemBuilder: (context, index) {
                  final animal = animalesPerdidos[index];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(animal['imagen']!),
                      ),
                      SizedBox(height: 8),
                      Text(
                        animal['nombre']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Visto por última vez:',
                        style: TextStyle(fontSize: 10, color: Colors.grey[800]),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        animal['ultima_vista']!,
                        style: TextStyle(fontSize: 10, color: Colors.grey[800]),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.redAccent,
                            size: 16,
                          ),
                          SizedBox(width: 4),
                          Flexible(
                            child: Text(
                              animal['ubicacion']!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            // Botones
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Acción para reportar animal perdido
                    },
                    icon: Icon(Icons.report),
                    label: Text('Reportar animal perdido'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFD0A659), // Color de fondo del botón
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Acción para buscar animales perdidos cerca de la ubicación
                    },
                    icon: Icon(Icons.location_on),
                    label: Text('Cerca de ti'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Color de fondo del botón
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
