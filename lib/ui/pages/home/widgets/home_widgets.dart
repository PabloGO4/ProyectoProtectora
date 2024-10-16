import 'package:flutter/material.dart';

// Función que construye un botón con texto alternado izquierda/derecha
Widget buildAlternatingMenuItem(BuildContext context, String title, String imagePath, int index) {
  bool isLeftAligned = index % 2 == 0;

  return Container(
    margin: EdgeInsets.all(10),
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black45, // Filtro oscuro sobre la imagen
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Row(
          mainAxisAlignment: isLeftAligned ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}


// Definir el Drawer
Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFFD0A659), // Color de fondo del header
          ),
          child: Text(
            "[nombre_protectora]", // Nombre del menú
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.pets),
          title: Text('Adoptar animales'),
          onTap: () {
            // Acción al pulsar esta opción
          },
        ),
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Animales perdidos'),
          onTap: () {
            // Acción al pulsar esta opción
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('Nuestros servicios'),
          onTap: () {
            // Acción al pulsar esta opción
          },
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Contacto'),
          onTap: () {
            // Acción al pulsar esta opción
          },
        ),
        ListTile(
          leading: Icon(Icons.local_hospital),
          title: Text('Veterinarios cercanos'),
          onTap: () {
            // Acción al pulsar esta opción
          },
        ),
        ListTile(
          leading: Icon(Icons.money),
          title: Text('Donaciones'),
          onTap: () {
            // Acción al pulsar esta opción
          },
        ),
      ],
    ),
  );
}

