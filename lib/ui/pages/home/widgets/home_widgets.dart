import 'package:flutter/material.dart';

// Función que construye un botón con imagen de fondo y texto intercalado
Widget buildAlternatingMenuItem(BuildContext context, String title, String imagePath, int index) {
  bool isLeftAligned = index % 2 == 0;

  return Container(
    margin: EdgeInsets.all(10),
    height: 150, // Altura para el botón
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
            color: Colors.black45, // Filtro oscuro sobre la imagen para mejorar la visibilidad del texto
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
