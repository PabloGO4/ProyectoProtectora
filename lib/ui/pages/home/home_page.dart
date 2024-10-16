import 'package:flutter/material.dart';
import 'widgets/home_widgets.dart'; // Importación correcta del archivo home_widgets

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "[nombre_protectora]",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFD0A659),
      ),
      drawer: buildDrawer(context), // Drawer importado desde home_widgets.dart
      body: ListView(
        children: [
          buildAlternatingMenuItem(context, "Adoptar animales", 'assets/images/adoptar_animales.jpg', 0),
          buildAlternatingMenuItem(context, "Animales perdidos", 'assets/images/animales_perdidos.webp', 1),
          buildAlternatingMenuItem(context, "Nuestros servicios", 'assets/images/nuestros_servicios.jpg', 2),
          buildAlternatingMenuItem(context, "Contacto", 'assets/images/contacto.jpg', 3),
          buildAlternatingMenuItem(context, "Veterinarios cercanos", 'assets/images/veterinarios.jpg', 4),
          buildAlternatingMenuItem(context, "Donaciones", 'assets/images/donaciones.jpg', 5),
        ],
      ),
    );
  }
}
